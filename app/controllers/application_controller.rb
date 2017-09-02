class ApplicationController < ActionController::Base
	before_action :authenticate_user!
   protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname,:username,:phone_number,:last_sign_out_at,:image])
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:fullname, :username, :phone_number, :last_sign_out_at, :current_password, :image) }
  end

end
