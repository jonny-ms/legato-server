class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
    
    render json: @teachers, status: :ok
  end

  def create
    @teacher = Teacher.new(teacher_params)
    
    @teacher.save

    session[:teacher_id] = teacher.id

    render json: @teacher, status: :created
  end


    
  private
    def teacher_params
      params.require(:teacher).permit(:first_name, :last_name :email, :password, :password_confirmation)
    end

  
end
