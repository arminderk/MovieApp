class UserMailer < Devise::Mailer
  default from: 'noreply@movieapp.com'
  
  def welcome_email(current_user)
    @user = current_user
    @url = 'http://movieapp.com/login'
    mail(to: @user.email, subject: 'Welcome to The CRUD Movie App')
  end
end
