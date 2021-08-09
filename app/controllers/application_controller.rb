class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_account_update_parameters, if: :devise_controller?
  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == '2222'
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :phone_number])
  end

  def configure_account_update_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :user_name, :introduction, :image])
  end
end
