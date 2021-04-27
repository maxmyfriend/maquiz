class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configre_permitted_parameters, if: :devise_controller?
 
 
  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'BASIC_AUTH_USER' && password == 'BASIC_AUTH_PASSWORD'
    end
  end

  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
