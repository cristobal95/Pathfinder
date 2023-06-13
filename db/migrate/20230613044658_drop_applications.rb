class DropApplications < ActiveRecord::Migration[7.0]
  def change
    drop_table :applications
  end
end
