class Student < ApplicationRecord
  validates :first_name, :last_name, :admission_number, presence: true
end
