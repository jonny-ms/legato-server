class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.references :teacher, null: false, foreign_key: true
      t.string :instrument
      t.string :level
      t.integer :rate

      t.timestamps
    end
  end
end
