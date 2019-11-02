class CoursesController < ApplicationController

  def index

    @courses = Course.includes(lessons: :timeslots).where(teacher_id: session[:teacher_id])
    
    render json: @courses.to_json(:include => [:lessons => { :include => :timeslots}]), status: :ok
    
  end

  def create

    course = Course.new(course_params) 
    course.save
    p course
    @courses = Course.where(teacher_id: session[:teacher_id])
    render json: @courses, status: :created
    
  end
  
  def destroy


    if Course.find(params[:id]).destroy

      render json: {status: 204}
    else
      render json: {status: 401}
    end
    
  end

  private
    def course_params
      params.require(:course).permit(:teacher_id, :instrument, :level, :rate)
    end

end
