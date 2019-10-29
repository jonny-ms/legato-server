class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all

    p current_user
    p session

    render json: @teachers, status: :ok
  end

  def create
    teacher = Teacher.new(teacher_params)

    if teacher.save
      session[:teacher_id] = teacher.id
      session[:type] = "teacher"

      p teacher.errors.full_messages
      p session[:teacher_id]

      render json: teacher, status: :created
    else
      render json: { status: 401 }
    end
  end


    
  private
    def teacher_params
      params.require(:teacher).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

  
end
