class ApplicationController < ActionController::Base
  # before_filter :configure_permitted_parameters, if: :devise_controller?
  include DeviseWhitelist
end
