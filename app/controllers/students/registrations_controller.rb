class Students::RegistrationsController < Devise::RegistrationsController

  def after_sign_in_path_for(resource)
    mycourses_path
  end

  private

  def sign_up_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end