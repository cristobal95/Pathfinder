class AddBooleanPaidToInternsship < ActiveRecord::Migration[7.0]
  def change
    add_column :internships, :paid, :boolean
  end
end
