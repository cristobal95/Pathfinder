class CreatePostulations < ActiveRecord::Migration[7.0]
  def change
    create_table :postulations do |t|
      t.json :status, default: {}
      t.boolean :selected
      t.references :user, null: false, foreign_key: true
      t.references :internship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
