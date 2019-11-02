class AddIsAvailableToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :is_available, :boolean, default: true
  end
end
