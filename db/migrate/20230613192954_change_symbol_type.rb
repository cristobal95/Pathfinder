class ChangeSymbolType < ActiveRecord::Migration[7.0]
  def change
    rename_column :internships, :type, :tipo
  end
end
