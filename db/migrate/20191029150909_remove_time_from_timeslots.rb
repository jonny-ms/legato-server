class RemoveTimeFromTimeslots < ActiveRecord::Migration[6.0]
  def change

    remove_column :timeslots, :time, :time
  end
end
