class Review < ApplicationRecord
  belongs_to :internship

  validates :comment, :rating, presence: true

end
