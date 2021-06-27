class ChangeJobs < ActiveRecord::Migration[6.0]
  def up
    change_column :jobs, :compensation, :money
  end

  def down
    change_column :jobs, :compensation, :integer
  end
end
