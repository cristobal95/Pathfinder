class AddCategoryAsJasonInInternships < ActiveRecord::Migration[7.0]
  def change
    add_column :internships, :category, :json
  end
end
