class Course < ApplicationRecord
  has_many :students
  validates :name, :units, presence: true
  UNITS = [
    'Introduction to Computer Studies',
    'Psychology', 'Sociology', 'HIV/AIDS',
    'Economics', 'Artificial Intelligence'
  ]
end
