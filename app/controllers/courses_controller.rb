class CoursesController < ApplicationController
  before_action :authenticate_student!
  layout "layout_students"

  def index
    @courses = Course.publish
  end

end
