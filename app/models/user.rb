class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_one_attached :photo
  #has_one_attached :pdf

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  validates :role, presence: true

  def empresa?
    self.role == true
  end

end
