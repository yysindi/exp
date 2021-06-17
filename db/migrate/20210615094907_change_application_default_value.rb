class ChangeApplicationDefaultValue < ActiveRecord::Migration[6.0]
  def change
    change_column_default :applications, :status, "applied"
  end
end
