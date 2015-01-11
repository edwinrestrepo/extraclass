class Admin::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_scope!

  def after_sign_in_path_for(resource)
    admin_courses_path
  end

end