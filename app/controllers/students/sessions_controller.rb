class Students::SessionsController < Devise::SessionsController

  def after_sign_in_path_for(resource)
    students_courses_path
  end

end