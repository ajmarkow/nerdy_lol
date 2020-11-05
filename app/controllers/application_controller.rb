class ApplicationController < ActionController::Base
  add_flash_types :alert
  helper_method :is_admin?
end
