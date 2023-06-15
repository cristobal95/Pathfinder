class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_account_update_params, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[role photo pdf])
  end

  def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: %i[photo pdf name website industry about city country first_name last_name age phone address studies college experience languages knowledges])
  end
end
