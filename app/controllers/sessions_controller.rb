class SessionsController < ApplicationController

  def create



    teacher = Teacher.find_by(email: params["email"])
      .try(:authenticate, params["password"])

    if teacher
    session[:teacher_id] = teacher.id
    render json: {
    status: :created,
    logged_in: true,
    teacher: teacher
    }
    else
    render json: { status: 401 }
    end
    
    
    
    
  end

  def destroy

  end

  
end
