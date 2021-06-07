class CreateExpScores < ActiveRecord::Migration[6.0]
  def change
    create_table :exp_scores do |t|
      t.references :user, null: true, foreign_key: true
      t.references :job, null: true, foreign_key: true
      t.string :industry
      t.integer :exp_value

      t.timestamps
    end
  end
end
