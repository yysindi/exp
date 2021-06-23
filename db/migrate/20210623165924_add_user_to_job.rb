class AddUserToJob < ActiveRecord::Migration[6.0]
  def change
    add_reference(:jobs, :user, foreign_key: true)
  end
end
