class CreateInternships < ActiveRecord::Migration[7.0]
  def change
    create_table :internships do |t|
      t.string :category
      t.string :title
      t.text :description
      t.string :type
      t.boolean :status
      t.integer :duration
      t.string :paid
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
