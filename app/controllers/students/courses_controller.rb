class Students::CoursesController < CoursesController
  before_action :authenticate_student!

  def index
    #@courses = StudentCourses.where(user: current_user)
  end

end