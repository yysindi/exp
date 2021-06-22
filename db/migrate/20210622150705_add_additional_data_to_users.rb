class AddAdditionalDataToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :headline, :text
    add_column :users, :current_position, :string
    add_column :users, :github_url, :string
    add_column :users, :phone_number, :string
    add_column :users, :location, :string
    add_column :users, :header_img, :string
    add_column :users, :interesting_fact, :text
    add_column :users, :where_want_to_work, :string
  end
end
