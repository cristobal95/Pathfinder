class Addcontenttopostulation < ActiveRecord::Migration[7.0]
  def change
    add_column :postulations, :content, :text
  end
end
