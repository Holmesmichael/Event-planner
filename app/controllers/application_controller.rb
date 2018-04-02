class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameter, if: :devise_controller?
  
  def welcome
    render html: "Welcome to Holmey events"
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_santizer.permit(:sign_up, keys: [:username])
  end

end
