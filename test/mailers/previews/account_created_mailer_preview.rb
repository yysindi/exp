# Preview all emails at http://localhost:3000/rails/mailers/account_created_mailer
class AccountCreatedMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/account_created_mailer/welcome
  def welcome
    AccountCreatedMailer.welcome
  end

  # Preview this email at http://localhost:3000/rails/mailers/account_created_mailer/Job_application
  def Job_application
    AccountCreatedMailer.Job_application
  end

end
