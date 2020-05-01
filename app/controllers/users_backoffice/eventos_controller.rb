class UsersBackoffice::EventosController < UsersBackofficeController
  before_action :set_evento, only: [:evento]

  def evento
  end

  def programacao
    # binding.pry
    @evento = Evento.left_outer_joins(dias: [:atividades]).find(params[:id])
  end

  private

  def set_evento
    # binding.pry
    @evento = Evento.find(params[:id])
  end
end
