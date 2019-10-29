class TimeslotsController < ApplicationController

  def show
    temp = 6
    @timeslots = Timeslot.where(teacher_id: temp)
    render json: @timeslots, status: :ok
  end

  def index
    if session[:teacher_id] == nil 
      temp = params[:id]
      p temp
      @timeslots = Timeslot.where(teacher_id: temp)
    else
      p "teacher id: #{session[:teacher_id]}"
      @timeslots = Timeslot.where(teacher_id: session[:teacher_id])
      p @timeslots
    end
      render json: @timeslots, status: :ok
  end

  def create
    Timeslot.where(teacher_id: session[:teacher_id]).destroy_all
    timeslot_params.each do |x|
      Timeslot.create(datetime: x, teacher_id: session[:teacher_id], is_booked: false)
    end
  end

  private
    def timeslot_params
      params.require(:timeslot)
    end

end
