class Admin::CoursesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    @course.save

  end

  def update
    @course.update(course_params)
  end

  def destroy
    @course.destroy
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description, :image, :status, :category_id)
    end

end