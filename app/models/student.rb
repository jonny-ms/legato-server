class Student < ApplicationRecord

  has_many :lessons
  has_many :timeslots
  
end
