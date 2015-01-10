class CoursesController < ApplicationController
  before_action :authenticate_student!


  def index
    @courses = Course.all
  end

  def show
  end

end
