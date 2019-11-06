class TeachersController < ApplicationController

  def index
    # Send a list of all the teachrs and their courses
    current_user
    @teachers = Teacher.includes(:courses, :videos).where(courses: {is_available: true})

    render json: { teachers: @teachers.to_json(:include => [:courses, :videos]), user: @current_user, type: @current_user.class.name}, status: :ok
  end

  def show
    # Send a specific teacher's calendar
    
    # @timeslots = Timeslot.where(teacher_id: params[:id], lesson_id: nil)
    @timeslots = Timeslot.where(teacher_id: params[:id])

    @courses = Course.where(teacher_id: params[:id], is_available: true)

    @lessons = Lesson.includes(:timeslots).where(student_id: session[:student_id])

    @teachers = Teacher.where(id: params[:id])

    @videos = Video.where(teacher_id: params[:id])
    
    # @mylessons = Lesson.where(student_id: session[:student_id]).pluck(:id)

    # @lessons = Timeslot.where(lesson_id: @mylessons)

    render json: { timeslots: @timeslots, courses: @courses, lessons: @lessons.to_json(include: :timeslots), teachers: @teachers, video: @videos}, status: :ok
  end

  def update

    @teacher = Teacher.find(session[:teacher_id])
    @teacher.update(update_params)

    render json: {status: 204}
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

  def new

    @teacher = Teacher.includes(:videos, :courses).find(session[:teacher_id])
    
    render json: @teacher.to_json(:include => [:videos, :courses]), status: :ok    
    
  end
    
  private
    def teacher_params
      params.require(:teacher).permit(:first_name, :last_name, :email, :password, :password_confirmation, :bio)
    end
    def update_params
      params.require(:teacher).permit(:bio, :tagline)
    end
  
end
