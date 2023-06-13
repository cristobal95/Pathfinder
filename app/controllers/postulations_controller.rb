class PostulationsController < ApplicationController
  enum status: { cerrada: 0, pendiente: 1, aprobada: 2 }
end
