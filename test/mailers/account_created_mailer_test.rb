require 'test_helper'

class AccountCreatedMailerTest < ActionMailer::TestCase
  test "welcome" do
    mail = AccountCreatedMailer.welcome
    assert_equal "Welcome", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "Job_application" do
    mail = AccountCreatedMailer.Job_application
    assert_equal "Job application", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
