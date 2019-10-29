class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
    # current_user
    # p @current_user
    render json: @teachers, status: :ok
  end

  def show
    # @teacher = Teacher.find(/* teacher id */)
    temp = params[:id]
    p temp
    @timeslots = Timeslot.where(teacher_id: temp)
    render json: @timeslots, status: :ok
  end

  def create
    teacher = Teacher.new(teacher_params)

    if teacher.save
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
