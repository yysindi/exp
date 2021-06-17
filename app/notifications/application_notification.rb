# To deliver this notification:
# ApplicationNotification.with(post: @post).deliver_later(current_user)
# ApplicationNotification.with(post: @post).deliver(current_user)

class ApplicationNotification < Noticed::Base
  include Devise::Controllers::Helpers
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

# def to_database
#   {
#     type: self.class.name,
#     account: Current.account,
#   }
# end

# Add required params

# param :job

  # Define helper methods to make rendering easier.
  #
  def message
    t(".message", job: params[:job].company_name)
  end

  def url(user_id, notification)
    # before redirecting find notification and do .read = true
    # notification.mark_as_read!
    user_path(user_id)
    # root_path
  end
end
