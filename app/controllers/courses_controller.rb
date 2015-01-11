class CoursesController < ApplicationController
  before_action :authenticate_student!
  layout "layout_students"


  def index
    @courses = Course.all
  end

  def show
  	@course = Course.find(params[:id])
  end

end
