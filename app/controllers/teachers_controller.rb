class TeachersController < ApplicationController

  def index
    # Send a list of all the teachrs
    current_user
    # p "current user"
    # p current user
    # p @current_user
    # @teachers = Teacher.all
    @teachers = Teacher.includes(:courses)
    @teachers_join_courses = Teacher.joins(:courses)
    p @teachers_join_courses
    # p @teachers
    # render json: @teachers.to_json(:include => :courses), status: :ok

    render json: { teachers: @teachers.to_json(include: :courses), user: @current_user, type: @current_user.class.name}, status: :ok
  end

  def show
    # Send a specific teacher's calendar
    temp = params[:id]
    # p temps
    @timeslots = Timeslot.where(teacher_id: temp)

    @course = Course.where(teacher_id: temp)

    render json: { timeslots: @timeslots, courses: @course}, status: :ok
  end

  def create
    # Create a new teacher
    teacher = Teacher.new(teacher_params)

    if teacher.save
      # Send info to say that teacher is logged in
      session[:teacher_id] = teacher.id
      session[:type] = "teacher"

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
