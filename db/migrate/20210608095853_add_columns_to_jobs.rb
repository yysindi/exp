class AddColumnsToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :company_name, :string 
    add_column :jobs, :location, :string 
    add_column :jobs, :about, :text
  end
end
