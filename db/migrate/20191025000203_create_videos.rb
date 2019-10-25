class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.references :teacher, null: false, foreign_key: true
      t.string :instrument
      t.string :level
      t.string :file

      t.timestamps
    end
  end
end
