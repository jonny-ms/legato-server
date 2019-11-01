class CoursesController < ApplicationController

  def index

    @courses = Course.includes(lessons: :timeslots).where(teacher_id: session[:teacher_id])
    
    render json: @courses.to_json(:include => [:lessons => { :include => :timeslots}]), status: :ok
    
  end

end
