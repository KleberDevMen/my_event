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
    if params[:code]
      @evento = Evento.find_by(codigo: params[:code])
    else
    @evento = Evento.find(params[:id])
    end
  end
end
