class Student < ApplicationRecord
  validates :first_name, :last_name, :admission_number, presence: true

  has_many :attendances

  DEPARTMENTS = [
    'Arts', 'Business', 'Economics', 'Computer Science', 'Medicine',
    'Geography', 'Music', 'Law', 'Science'
  ]
  COURSES = [
    'Arts', 'Sociology', 'IT', 'Economics', 'Medicine', 'Sports', 'Psychology',
    'Law', 'Music', 'Business Commerce', 'Bio-Chemistry'
  ]
end
