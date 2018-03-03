class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(required_params)
    if @student.save!
      redirect_to student_path(@student)
    else
      render :new
    end
  end



  private

  def required_params
    params.require(:student).permit(
      :first_name,
      :last_name,
      :admission_number,
      :national_id_number,
      :course,
      :department,
      :year_of_admission,
      :year_of_completion,
      :gender,
      :fee_status
    )
  end
end
