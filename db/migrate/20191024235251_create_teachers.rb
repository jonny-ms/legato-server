class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :profile_pic
      t.text :bio
      t.json :address
      t.string :postal_code
      t.json :certifications
      t.boolean :will_host
      t.boolean :will_travel

      t.timestamps
    end
  end
end
