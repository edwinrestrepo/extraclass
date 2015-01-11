class StaticController < ApplicationController
  before_action :authenticate
  def index
  end

  def authenticate
    redirect_to admin_courses_path if admin_signed_in?
    redirect_to courses_path if student_signed_in?
  end
end
