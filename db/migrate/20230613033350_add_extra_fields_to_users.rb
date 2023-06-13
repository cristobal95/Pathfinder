class AddExtraFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :studies, :string
    add_column :users, :college, :string
    add_column :users, :experience, :text
    add_column :users, :languages, :string
    add_column :users, :knowledges, :string
    add_column :users, :name, :string
    add_column :users, :website, :string
    add_column :users, :industry, :string
    add_column :users, :about, :text
  end
end
