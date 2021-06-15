class AccountCreatedMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.account_created_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"

    @user = params[:user]
    @url = ''
    mail(to: @user.email, subject: 'Welcome to EXP')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.account_created_mailer.Job_application.subject
  #
  def job_application
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
