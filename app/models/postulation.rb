class Postulation < ApplicationRecord
  enum status: { cerrada: 0, pendiente: 1, aprobada: 2 }
  belongs_to :user
  belongs_to :internship

validates :user_id, uniqueness: true

end
