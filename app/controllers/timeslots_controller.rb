class TimeslotsController < ApplicationController

  def index
    p "teacher id: #{session[:teacher_id]}"
    @timeslots = Timeslot.where(teacher_id: session[:teacher_id])
    p @timeslots
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
