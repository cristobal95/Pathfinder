class Internship < ApplicationRecord
  belongs_to :user
  has_many :postulations
  validates :title, :category, :start_date, :end_date, presence: true
end
