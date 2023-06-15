class SetSelectedDefaultFalseInPostulations < ActiveRecord::Migration[7.0]
  def change
    change_column :postulations, :selected, :boolean, default: false
  end
end
