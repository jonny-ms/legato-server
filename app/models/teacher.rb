class Teacher < ApplicationRecord
  
  # include ActiveModel::SecurePassword
  has_secure_password

  has_many :courses
  has_many :videos
  has_many :timeslots
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
  
end
