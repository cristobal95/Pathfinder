class DeleteCategoryFromInternships < ActiveRecord::Migration[7.0]
  def change
    remove_column :internships, :category
  end
end
