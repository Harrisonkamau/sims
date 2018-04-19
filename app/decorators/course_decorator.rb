class CourseDecorator < Draper::Decorator
  delegate_all

  def short_type
    case course_type
    when 'Bachelors'
      short_code = 'BSC'
      short_code
    when 'Masters'
      short_code = 'MSc'
      short_code
    when 'Doctorate'
      short_code = 'PhD'
      short_code
    else
      course_type
    end

  end

  def course_type
    object.course_type
  end
end
