class AddLocationToInternship < ActiveRecord::Migration[7.0]
  def change
    add_column :internships, :city, :string
    add_column :internships, :state, :string
    add_column :internships, :country, :string
  end
end
