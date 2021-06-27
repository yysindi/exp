class Notification < ApplicationRecord
  include Noticed::Model
  include User::Model
  belongs_to :recipient, polymorphic: true
end
