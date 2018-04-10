class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameter, if: :devise_controller?
  include SessionsHelper
  
  def welcome
    render html: "Welcome to Holmey events"
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_santizer.permit(:sign_up, keys: [:username])
  end

  private 

  #confirsm a logged-in user
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
