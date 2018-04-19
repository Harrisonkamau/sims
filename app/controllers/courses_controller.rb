class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    @courses = Course.all
    @courses
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(course_id)
    respond_to do |format|
      format.js
    end
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = 'Course has been created!'
      redirect_to courses_path
    else
      flash.now[:error] = 'Could not create a course'
      render :new
    end
  end

  def update
    @course =  Course.find(course_id)
    @course.update(course_params)
    if @course.save
      flash[:notice] = 'Successfully updated course'
      redirect_to course_path(@course)
    else
      flash.now[:error] = 'Error occurred while updating course'
      render :edit
    end
  end

  def destroy
    @course.destroy
    flash.now[:notice] = 'Course has been deleted!'
    redirect_to courses_path
  end


  private

  def set_course
    @course = Course.find(course_id)
  end

  def course_id
    params[:id]
  end

  def course_params
    params.require(:course).permit(
      :name,
      :course_type,
      :duration,
      :code
    )
  end

end
