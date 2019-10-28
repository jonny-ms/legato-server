class ApplicationController < ActionController::API

  include ActionController::Cookies
  # include ActionController::RequestForgeryProtection

  # protect_from_forgery with: :exception

  private

    def current_user
      if session[:type] == "teacher"
        @current_user = Teacher.find(session[:teacher_id])
      end
      if session[:type] == "student"
        @current_user = Student.find(session[:student_id])
      end
    end
    helper_method :current_user
  
    def authorize
      redirect_to '/login' unless current_user
    end
    


end
