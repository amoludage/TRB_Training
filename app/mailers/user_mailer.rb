class UserMailer < ApplicationMailer
  default from: 'amoludage@joshsoftware.com'

  def welcome_email
    @user = User.first
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
