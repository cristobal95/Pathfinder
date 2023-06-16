class Internship < ApplicationRecord

  enum tipo: { remoto: "Remoto", presencial: "Presencial", híbrido: "Híbrido" }
  enum category: {
    administration: "Administración y gestión empresarial",
    sales: "Ventas y marketing",
    human_resources: "Recursos Humanos",
    it: "IT",
    accounting: "Finanzas y contabilidad",
    product: "Desarrollo de productos",
    customer: "Servicio al cliente",
    health: "Salud y medicina",
    education: "Educación y formación",
    legal: "Legal",
    design: "Diseño y arte",
    media: "Medios de comunicación",
    construction: "Construcción y mantenimiento",
    cience: "Ciencia e investigación",
    logistic: "Logística y transporte",
    turism: "Turismo y hostelería",
    agriculture: "Agricultura y medio ambiente",
    manufacture: "Manufactura y producción",
    gno: "Sector sin ánimo de lucro",
    other: "Otros"
  }

  enum paid: { No: false, Si: true }
  enum status: { Abierta: false, Finalizada: true }

  belongs_to :user
  has_many :postulations
  validates :title, :category, :start_date, :end_date, presence: true
  validates :tipo, :duration, :description, :paid, presence: true
  validates :duration, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 12 }

  def selected_students
    self.postulations.where(selected: true)
  end


  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [ :title, :city, :country],
    using: {
      tsearch: { prefix: true }
    }

end
