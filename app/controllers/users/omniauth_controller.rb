class Users::OmniauthController < ApplicationController
    # Method for Omniauth Google Callback
    def google_oauth2
      @user = User.create_from_google_data(request.env['omniauth.auth'])
      if @user.persisted?
        sign_in_and_redirect @user
        set_flash_message(:notice, :success, kind: 'Google') if is_navigational_format?
      else
        flash[:error]= 'There was an issue with your sign in thru Google. Please try again.'
        redirect_to new_user_registration_url
      end
    end
  
    def failure
      flash[:error] = 'There weas a problem signing you in. Please register or try again.'
      redirect_to new_user_registration_url
    end
end
