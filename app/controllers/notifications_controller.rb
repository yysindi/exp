class NotificationsController < ApplicationController
  def index
    @notifications = current_user.notifications.partition{|note| note.read? }.flatten.reverse
  end
end
