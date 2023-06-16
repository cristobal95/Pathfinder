class Postulation < ApplicationRecord
  enum status: { Rechazada: 0, Pendiente: 1, Aprobada: 2 }, _default: 1
  belongs_to :user
  belongs_to :internship

  validates :content, length: { maximum: 150 }

  validate :unique_postulation, on: :create

  private

  def unique_postulation
    if Postulation.exists?(user_id: user_id, internship_id: internship_id)
      errors.add(:base, 'Ya te has postulado a esta pasantía.')
    end
  end

end
