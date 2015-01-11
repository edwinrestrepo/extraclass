class CoursesController < ApplicationController
  before_action :authenticate_student!
  layout "layout_students"

  def index
    @courses_available = Course.where(status: :publish)
    @my_progress = ContentProgress.where(student_id: current_student.id).includes(:content, :course)
  end

end
