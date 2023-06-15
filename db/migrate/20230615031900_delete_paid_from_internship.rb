class DeletePaidFromInternship < ActiveRecord::Migration[7.0]
  def change
    remove_column :internships, :paid
  end
end
