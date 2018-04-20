class Student < ApplicationRecord
  validates :first_name, :last_name, :admission_number, presence: true

  has_many :attendances, dependent: :destroy
  belongs_to :course

  DEPARTMENTS = [
    'Arts', 'Business', 'Economics', 'Computer Science', 'Medicine',
    'Geography', 'Music', 'Law', 'Science'
  ]
end
