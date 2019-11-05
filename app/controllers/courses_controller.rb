class CoursesController < ApplicationController

  def index

    @courses = Course.includes(lessons: :timeslots).where(teacher_id: session[:teacher_id])
    @mycourses = Course.where(teacher_id: session[:teacher_id])
    @studentIds = Lesson.where(course_id: @mycourses).select(:student_id).distinct
    @students = Student.where(id: @studentIds)

    render json: {courses: @courses.to_json(:include => [:lessons => { :include => :timeslots}]), students: @students}, status: :ok
    
  end

  def create

    course = Course.new(course_params) 
    course.save
    p course
    @courses = Course.where(teacher_id: session[:teacher_id])
    render json: @courses, status: :created
    
  end
  
  def update

    @course = Course.find(params[:id])

    @lessons = Lesson.where(course_id: @course.id).select(:id).distinct

    @timeslots = Timeslot.where(lesson_id: @lessons)


    now = Time.current


    future_lessons = @timeslots.where("datetime > ?", now)
    if future_lessons.length > 0
      render json: { course: @course, status: 401}
    else

      @course.update(is_available: false)
      render json: {status: 204}
    end
    
  end

  private
    def course_params
      params.require(:course).permit(:teacher_id, :instrument, :level, :rate)
    end

end
