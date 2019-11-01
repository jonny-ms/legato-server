class StudentsController < ApplicationController

  def index

    # @mylessons = Lesson.where(student_id: session[:student_id]).pluck(:id)

    # @lessons = Timeslot.where(lesson_id: @mylessons)
    
    # render json: @lessons, status: :ok
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
