class Postulation < ApplicationRecord
  enum status: { Rechazada: 0, Pendiente: 1, Aprobada: 2 }, _default: 1
  belongs_to :user
  belongs_to :internship
end
