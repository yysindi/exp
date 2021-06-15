class AccountCreatedMailer < ApplicationMailer
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to EXP')
  end

  def job_application
    @user = user

    mail(to: @user.email, subject: 'Application Confirmation')
  end
end
