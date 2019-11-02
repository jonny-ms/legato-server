class CoursesController < ApplicationController

  def index

    @courses = Course.includes(lessons: :timeslots).where(teacher_id: session[:teacher_id])
    @mycourses = Course.where(teacher_id: session[:teacher_id])
    @studentIds = Lesson.where(course_id: @mycourses).select(:student_id).distinct
    @students = Student.where(id: @studentIds)

    render json: {courses: @courses.to_json(:include => [:lessons => { :include => :timeslots}]), students: @students}, status: :ok
    
  end

end
