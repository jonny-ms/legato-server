class Timeslot < ApplicationRecord
  belongs_to :teacher
  belongs_to :lesson, optional: true

  validates :datetime, presence: true, uniqueness: true
end
