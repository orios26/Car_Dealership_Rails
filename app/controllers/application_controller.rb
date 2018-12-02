class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

rescue_from CanCan::AccessDenied do |exception|
  flash[:warning] = exception.message
  redirect_to '/', :alert => exception.message
end
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end
end
