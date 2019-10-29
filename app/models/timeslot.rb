class Timeslot < ApplicationRecord
  belongs_to :teacher
  belongs_to :lesson, optional: true
end
