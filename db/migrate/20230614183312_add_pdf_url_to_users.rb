class AddPdfUrlToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pdf_url, :string
  end
end
