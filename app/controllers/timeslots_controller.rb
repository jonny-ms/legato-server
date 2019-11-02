class TimeslotsController < ApplicationController

  def index


    @timeslots = Timeslot.where(teacher_id: session[:teacher_id])

    render json: @timeslots, status: :ok

  end

  def create
    # Add a teacher's availability to the database
    # Timeslot.where(teacher_id: session[:teacher_id]).destroy_all
    timeslot_params.each do |x|
      Timeslot.create(datetime: x, teacher_id: session[:teacher_id], is_booked: false)
    end
  end

  # def update

  #   @timeslot = Timeslot.find(timeslot_params)
  #   @timeslot.update(is_booked: true)
    
  # end

  def destroy

    p timeslot_params
    
    Timeslot.find(timeslot_params).destroy
    
  end

  private
    def timeslot_params
      params.require(:timeslot)
    end

end
