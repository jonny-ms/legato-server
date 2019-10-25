class CreateStudentReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :student_reviews do |t|
      t.text :review
      t.integer :rating
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
