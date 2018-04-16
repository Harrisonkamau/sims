class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def show
    @course = Course.find(course_id)
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = 'Course has been created!'
      render courses_path
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
      render @course
    else
      flash.now[:error] = 'Error occurred while updating course'
      render :edit
    end
  end


  private

  def course_params
    params.require(:course).permit(
      :name,
      :units
    )
  end

  def course_id
    params[:id]
  end
end
