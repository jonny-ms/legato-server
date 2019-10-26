class AddIsBookedToTimeslot < ActiveRecord::Migration[6.0]
  def change
    add_column :timeslots, :is_booked, :boolean
  end
end
