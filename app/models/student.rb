class Student < ApplicationRecord
  has_secure_password

  has_many :lessons
  has_many :timeslots
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  
end
