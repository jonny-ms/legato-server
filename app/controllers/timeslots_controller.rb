class TimeslotsController < ApplicationController

  def create
    timeslot_params.each do |x|
      Timeslot.create(datetime: x, teacher_id: session[:teacher_id], is_booked: false)
    end
  end

  private
    def timeslot_params
      params.require(:timeslot)
    end

end
