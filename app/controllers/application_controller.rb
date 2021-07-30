class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_account_update_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :phone_number])
  end

  def configure_account_update_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :user_name, :introduction, :image])
  end
end
