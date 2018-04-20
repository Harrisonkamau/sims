class Course < ApplicationRecord
  has_many :students, dependent: :destroy
  validates :name, :course_type, :duration, presence: true

  COURSE_TYPES = %w( Bachelors Masters Doctorate )
end
