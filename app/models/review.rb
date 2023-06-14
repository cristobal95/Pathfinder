class Review < ApplicationRecord
  belongs_to :internship

  validates :comment, presence: true
  validates :rating, presence: true
end
