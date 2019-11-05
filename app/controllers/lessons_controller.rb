class LessonsController < ApplicationController

  def index
    
    @lessons = Lesson.includes(:timeslots).where(student_id: session[:student_id])
    
    @courseIds = @lessons.select(:course_id).distinct
    
    @courses = Course.where(id: @courseIds)

    @teacherIds = @courses.select(:teacher_id).distinct

    @teachers = Teacher.where(id: @teacherIds)

    @data = @lessons.to_json(include: :timeslots)

    render json: { lessons: @data, courses: @courses, teachers: @teachers }, status: :ok
  end
  
  
  def create
    # Create a lesson once a student has requested an appointment - not a booking until the teacher confirms
    @lesson = Lesson.create(student_id: session[:student_id], course_id: lesson_params[:course_id])

    lesson_params[:timeslots].each do |x|
      @timeslot = Timeslot.find(x)
      @timeslot.update(lesson_id: @lesson.id)
    end
    
  end

  def update

      @lesson = Lesson.find(params[:id])

    if params[:has_paid]
      @lesson.update(has_paid: true)
      p @lesson
    else

      @timeslots = Timeslot.where(lesson_id: @lesson)
  
      @timeslots.update(is_booked: true)

    end
 

  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @timeslots = Timeslot.where(lesson_id: @lesson)

    @timeslots.each do |timeslot|
      timeslot.update(lesson_id: nil, is_booked: false)
    end
    
    @lesson.destroy
  end

    
  private
    def lesson_params
      params.require(:lesson).permit(:course_id, :has_paid, timeslots: [])
    end
  
end
