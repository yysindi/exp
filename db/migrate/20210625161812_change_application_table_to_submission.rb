class ChangeApplicationTableToSubmission < ActiveRecord::Migration[6.0]
  def change
    rename_table :applications, :job_applications
  end
end
