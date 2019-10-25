class Timeslot < ApplicationRecord
  belongs_to :teacher
  belongs_to :lesson
end
