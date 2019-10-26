class Teacher < ApplicationRecord

  has_many :courses
  has_many :videos
  has_many :timeslots
  
end
