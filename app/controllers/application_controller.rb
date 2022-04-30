class ApplicationController < ActionController::Base
  # before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  # def after_sign_in_path_for(resource)
  #   if current_user.has_role?(:admin)
  #     dashboard_path
  #   elsif current_user.has_role?(:student)
  #     root_path
  #   else
  #     root_path
  #   end
  # end
end
