class Attendance < ApplicationRecord
  belongs_to :student

  STATUS = %w(present absent)
end
