class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end

  def google_oauth2
    sign_omniauth
  end

  def facebook
    #ghi vao bang useromni
    sign_omniauth
  end
  
  def failure
    redirect_to root_path
  end

  def sign_omniauth
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user, :event => :authentication
    #đăng nhập lần t2 sẽ không có pass, lúc đó không send mail
    if @user.password != nil
      ApplicationMailer.sample_email(@user).deliver
    end                 
  end  
end
