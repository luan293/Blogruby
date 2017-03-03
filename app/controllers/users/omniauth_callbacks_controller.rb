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
      abc
  end
  def facebook
   #ghi vao bang useromni
        abc
  end
  
  def failure
    redirect_to root_path
  end
  def abc
    #ghi vao bang useromni
        #@useromni = Useromni.from_omniauth(request.env["omniauth.auth"])
        #@user = User.where(email: request.env["omniauth.auth"].email)
       # if @user.count > 0
          #@useromni = Useromni.from_omniauth(request.env["omniauth.auth"], @user.id)
          #sign_in_and_redirect @user, :event => :authentication
       # else
          @user = User.from_omniauth(request.env["omniauth.auth"])
          sign_in_and_redirect @user, :event => :authentication
       # end
  end
  
  
end
