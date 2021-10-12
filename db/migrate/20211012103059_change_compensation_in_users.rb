class ChangeCompensationInUsers < ActiveRecord::Migration[6.0]
  def up
    change_table :jobs do |t|
      t.change :compensation, :decimal, :precision => 8, :scale => 2
    end
  end

  def down
    change_table :jobs do |t|
      t.change :compensation, :money
    end
  end
end

