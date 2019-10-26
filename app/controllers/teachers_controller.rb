class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
    
    render json: @teachers, status: :ok
  end

  def create
    @teacher = Teacher.new(teacher_params)
    
    @teacher.save

    render json: @teacher, status: :created
  end


    
  private
    def teacher_params
      params.permit(:first_name)
    end

  
end
