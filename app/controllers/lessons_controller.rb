class LessonsController < ApplicationController

  def index
    
    @lessons = Lesson.includes(:timeslots).where(student_id: session[:student_id])
    
    @courseIds = @lessons.select(:course_id).distinct
    
    @courses = Course.where(id: @courseIds)

    @data = @lessons.to_json(include: :timeslots)

    render json: { lessons: @data, courses: @courses }, status: :ok
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
    p params
    @lesson = Lesson.find(params[:id])

    @timeslots = Timeslot.where(lesson_id: @lesson)

    p @timeslots

    @timeslots.update(is_booked: true)
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @timeslots = Timeslot.where(lesson_id: @lesson)

    @timeslots.each do |timeslot|
      timeslot.update(lesson_id: nil)
    end
    
    @lesson.destroy
  end

    
  private
    def lesson_params
      params.require(:lesson).permit(:course_id, timeslots: [])
    end
  
end
