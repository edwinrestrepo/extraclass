class Admin::CoursesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  layout "layout_admins"

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
    if @course.save
      redirect_to admin_courses_path, notice: 'Course was successfully created.'
    else
      render :new
    end
  end

  def update
    if @course.update(course_params)
      redirect_to admin_course_path, notice: 'Course was successfully updated.' 
    else
      render :edit 
    end
  end

  def destroy
    if @course.destroy
      redirect_to admin_courses_path, notice: 'Course was successfully destroyed.'
    else
      render :index
    end
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description, :image, :status, :category_id)
    end

end