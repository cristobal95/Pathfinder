class AddReviewsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :reviews, :integer
  end
end
