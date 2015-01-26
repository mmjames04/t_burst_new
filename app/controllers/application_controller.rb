require 'pry'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user


  def create 
  	raise request.env["omniauth.auth"].to_yaml
  end

  def index
  	render "/layouts/application"
  end


  private 

  def current_user 
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  		#binding.pry
  end 

end


