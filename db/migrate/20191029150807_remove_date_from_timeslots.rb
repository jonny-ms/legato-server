class RemoveDateFromTimeslots < ActiveRecord::Migration[6.0]
  def change

    remove_column :timeslots, :date, :date
  end
end
