class AttendanceDecorator < Draper::Decorator
  delegate_all

  def student_name
    "#{object.student.first_name}"
  end
end
