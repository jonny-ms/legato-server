class StudentsController < ApplicationController

  def index
  end

  def create
    # Create a new student
    student = Student.new(student_params)
    student.save

    # Send info to say that student is logged in
    session[:student_id] = student.id

    render json: student, status: :created
  end


    
  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
  
end
