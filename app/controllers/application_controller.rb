class ApplicationController < ActionController::Base
  add_flash_types :alert
  helper_method :is_admin?
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
end
