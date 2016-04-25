class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_filter :configure_permitted_parameters, if: :devise_controller?

	protected
	  # my custom fields are :username, :image
	  def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up) do |u|
	      u.permit(:username, :profile_picture, :email, :password, :password_confirmation, :fname, :lname)
	    end

	    devise_parameter_sanitizer.for(:account_update) do |u|
	      u.permit(:username, :profile_picture, :email, :password, :password_confirmation, :current_password, :fname, :lname)
	    end
	  end

end
