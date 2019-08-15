class ApplicationController < ActionController::Base
  def configure_permitted_parameters
    before_action :configure_permitted_parameters, if: :devise_controller?
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
