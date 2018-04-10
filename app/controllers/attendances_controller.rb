class AttendancesController < ApplicationController
  def index
    # @attendances = Student.attendances.all
    @attendances = Attendance.all
  end

  def show
    @attendance = Attendance.find(attendance_id)
  end

  def new
    # @attendance = student.attendances.new
    @students = Student.all
  end

  def create
    if params[:attendance][:student_id]
      @student = Student.find_by id: params[:attendance][:student_id]
      @attendance = @student.attendances.new(attendance_params)
      if @attendance.save
        flash[:notice] = 'Successfully created students register'
        redirect_to attendances_path
      else
        flash.now[:error] = 'Error occurred while creating attendance'
        render :new
      end
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(
      :admission_number,
      :date,
      :status
    )
  end

  def attendance_id
    params[:id]
  end

  def student
    @student = params[:student_id]
  end
end
