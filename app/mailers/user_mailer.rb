class UserMailer < ApplicationMailer
  # default from: 'notifications@example.com'
  
  def welcome_email(user)
    @user = user
    mail(to: 'mackey91@gmail.com', subject: @user.subject)
  end
end
