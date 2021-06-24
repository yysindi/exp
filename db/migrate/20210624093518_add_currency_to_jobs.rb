class AddCurrencyToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :currency, :float
  end
end
