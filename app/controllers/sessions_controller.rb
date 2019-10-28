class SessionsController < ApplicationController

  
  def create
    teacher = Teacher.find_by_email(params[:email])
      .try(:authenticate, params[:password])

    student = Student.find_by_email(params[:email])
    .try(:authenticate, params[:password])

    if teacher
      session[:teacher_id] = teacher.id
      session[:type] = "teacher"
      render json: {
        status: :created,
        logged_in: true,
        user: user
    }
    elsif student
      session[:student_id] = student.id
      session[:type] = "student"
      render json: {
        status: :created,
        logged_in: true,
        user: user
    }
    else
      render json: { status: 401 }
    end

  end

  def destroy
    session[:teacher_id] = nil
    session[:student_id] = nil
    session[:type] = nil
    redirect_to '/'
  end
  
end
