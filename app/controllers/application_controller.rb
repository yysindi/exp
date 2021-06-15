class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_counter

  private

  def set_counter
    return if current_user.nil?
    if current_user.notifications.all? { |note| note.read? }
      @application_count = 0
    else
      @application_count = current_user.notifications.count { |note| !note.read? }
    end
  end
end
