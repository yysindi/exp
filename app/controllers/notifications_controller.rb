class NotificationsController < ApplicationController
  after_action :mark_as_read
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @application_count = 0
    @notifications = current_user.notifications.partition{|note| note.read? }.flatten.reverse
    @notifications.each do |notification|
      authorize notification
    end
  end

  private

  def mark_as_read
    @notifications.each do |notification|
      notification.mark_as_read!
    end
  end
end
