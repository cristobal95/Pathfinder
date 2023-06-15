class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_one_attached :photo
  #has_one_attached :pdf

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def empresa?
    self.role == true
  end
end
