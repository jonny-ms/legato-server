class Timeslot < ApplicationRecord
  belongs_to :teacher
  belongs_to :lesson, optional: true

  validates :datetime, presence: true, uniqueness: { scope: :teacher_id }
end
