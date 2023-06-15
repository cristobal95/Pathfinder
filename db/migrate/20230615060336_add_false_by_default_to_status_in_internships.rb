class AddFalseByDefaultToStatusInInternships < ActiveRecord::Migration[7.0]
  def change
    change_column :internships, :status, :boolean, default: false
  end
end
