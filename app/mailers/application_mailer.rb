class ApplicationMailer < ActionMailer::Base
  default from: "luan29394@gmail.com"

  def sample_email user
    @user = user
    mail to: @user.email, subject: "Sample Email"
  end
  
end
