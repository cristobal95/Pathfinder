class DeleteTipoFromInternships < ActiveRecord::Migration[7.0]
  def change
    remove_column :internships, :tipo
  end
end
