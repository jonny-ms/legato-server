class SessionsController < ApplicationController

  def index
    current_user
    render json: { 
      user: @current_user, 
      type: @current_user.class.name}, status: :ok
  end
  
  def create
    teacher = Teacher.find_by_email(params[:email])
      .try(:authenticate, params[:password])

    student = Student.find_by_email(params[:email])
    .try(:authenticate, params[:password])

    if teacher
      p "I'm a teacher: #{teacher.id}"
      session[:teacher_id] = teacher.id
      session[:type] = "teacher"
      render json: {
        status: :created,
        logged_in: true,
        teacher: true,
        student: false
    }
    elsif student
      p "I'm a student: #{student.id}"
      session[:student_id] = student.id
      session[:type] = "student"
      render json: {
        status: :created,
        logged_in: true,
        student: true,
        teacher: false
    }
    else
      render json: { status: 401 }
    end

  end
  

  def destroy
    session[:teacher_id] = nil
    session[:student_id] = nil
    session[:type] = nil

    render json: { 
      status: :destroyed,
      logged_in: :false
    }
  end
  
end
