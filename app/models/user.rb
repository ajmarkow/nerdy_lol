class User < ApplicationRecord
    # Include default devise modules. Others available are:
    devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable, 
          :confirmable, :lockable, :timeoutable, :trackable,:omniauthable, omniauth_providers: [:google_oauth2]

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0,20]
      user.skip_confirmation!
      end
    end
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
