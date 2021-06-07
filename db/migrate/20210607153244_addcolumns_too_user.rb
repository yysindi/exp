class AddcolumnsTooUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :profile_description, :string
    add_column :users, :profile_img, :string
    add_column :users, :linked_in, :string
    add_column :users, :desired_industry, :string
    add_column :users, :twitter_url, :string
  
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
