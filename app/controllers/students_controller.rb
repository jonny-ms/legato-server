class StudentsController < ApplicationController

  def index
  end

  def create
    student = Student.new(student_params)
    
    student.save

    session[:student_id] = student.id

    render json: student, status: :created
  end


    
  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
  
end
