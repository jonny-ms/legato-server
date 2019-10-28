class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all

    render json: @teachers, status: :ok
  end

  def create
    teacher = Teacher.new(teacher_params)

    if teacher.save
      session[:teacher_id] = teacher.id
      session[:type] = "teacher"
      render json: teacher, status: :created
    else
      render json: { status: 401 }
    end
  end


    
  private
    def teacher_params
      params.require(:teacher).permit(:first_name)
    end

  
end
