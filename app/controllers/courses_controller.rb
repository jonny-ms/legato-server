class CoursesController < ApplicationController

  def index

    @courses = Course.where(teacher_id: session[:teacher_id])

    render json: @courses, status: :ok
  end

end
