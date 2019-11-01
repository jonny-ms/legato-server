class Lesson < ApplicationRecord
  belongs_to :student
  belongs_to :course

  has_many :timeslots
end
