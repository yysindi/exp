class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :industry
      t.string :title
      t.text :description
      t.string :logo
      t.string :website
      t.boolean :paid
      t.integer :compensation
      t.date :start_date
      t.date :end_date
      t.boolean :accepting_applications

      t.timestamps
    end
  end
end
