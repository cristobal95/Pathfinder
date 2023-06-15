class Postulation < ApplicationRecord
  enum status: { rechazada: 0, pendiente: 1, aprobada: 2 }, _default: 1
  belongs_to :user
  belongs_to :internship
end
