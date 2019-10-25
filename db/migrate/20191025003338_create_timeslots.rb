class CreateTimeslots < ActiveRecord::Migration[6.0]
  def change
    create_table :timeslots do |t|
      t.references :teacher, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
