class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(student_id).decorate
  end

  def new
    @student = Student.new
    @courses = Course.all.map do |c|
      [ c.name, c.id ]
    end
  end

  def create
    @student = Student.new(student_params)
    @student.course_id = params[:course_id]
    if @student.save!
      flash[:notice] = 'Successfully added a student into the database'
      redirect_to student_path(@student)
    else
      flash[:error] = "Fields cannot be empty"
      render :new
    end
  end


  def edit
    @student = Student.find(student_id)
  end

  def update
    @student = Student.find(student_id)
    if @student.update_attributes(student_params)
      flash[:notice] = 'Student details have been updated'
      redirect_to student_path(@student)
    else
      render :edit
    end
  end

def destroy
  @student = Student.find(student_id)
  @student.destroy
  redirect_to students_path
end

  private

  def student_params
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

  def student_id
    params[:id]
  end
end
