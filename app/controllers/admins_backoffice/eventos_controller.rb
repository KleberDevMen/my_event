class AdminsBackoffice::EventosController < AdminsBackofficeController
  before_action :set_evento, only: [:show, :edit, :update, :destroy, :inscritos]
  before_action :set_combos, only: [:new, :create, :edit, :update]

  # GET /eventos
  # GET /eventos.json
  def index
    @eventos = Evento.where(admin_id: current_admin[:id])
  end

  # GET /eventos/1
  # GET /eventos/1.json
  def show
  end

  # GET /eventos/new
  def new
    @evento = Evento.new
  end

  # GET /eventos/1/edit
  def edit
  end

  # POST /eventos
  # POST /eventos.json
  def create
    @evento = Evento.new(evento_params)

    respond_to do |format|
      if @evento.save
        format.html { redirect_to admins_backoffice_eventos_path, notice: t('messages.cadastrado') }
        format.json { render :show, status: :created, location: @evento }
      else
        format.html { render :new }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventos/1
  # PATCH/PUT /eventos/1.json
  def update
    respond_to do |format|
      if @evento.update(evento_params)
        format.html { redirect_to admins_backoffice_eventos_path, notice: t('messages.alterado') }
        format.json { render :show, status: :ok, location: @evento }
      else
        format.html { render :edit }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventos/1
  # DELETE /eventos/1.json
  def destroy
    @evento.destroy
    respond_to do |format|
      format.html { redirect_to admins_backoffice_eventos_path, notice: t('messages.deletado') }
      format.json { head :no_content }
    end
  end

  def inscritos


    # *** GEM FIREBASE
    #private_key_json_string = File.open('config/firebase.json').read
    #base_uri = "https://my-event-b8375.firebaseio.com"
    #firebase = Firebase::Client.new(base_uri, private_key_json_string)
    #
    #@response = firebase.get('col/doc/texto')


    # *** GEM FIRESTORE
    #require "google/cloud/firestore"
    #firestore = Google::Cloud::Firestore.new(
    #    project_id: "my-event-b8375",
    #    credentials: "config/firebase.json"
    #)
    #
    #city = firestore.col("col").doc("doc")
    #
    #city.set({name: "San Francisco",
    #          state: "CA",
    #          country: "USA",
    #          capital: false,
    #          population: 860000})
    #
    #
    #firestore.transaction do |tx|
    #  new_population = tx.get(city).data[:population] + 1
    #  binding.pry
    #  tx.update(city, {population: new_population})
    #end


    # *** GEM BIGQUERY
    #require "google/cloud/bigquery"
    #
    #Google::Cloud::Bigquery.configure do |config|
    #  config.project_id = "my-event-b8375"
    #  config.credentials = "config/firebase.json"
    #end
    #
    #bigquery = Google::Cloud::Bigquery.new
    #
    #sql = "SELECT * FROM users"
    #data = bigquery.query sql
    #puts data
      #bigquery.datasets.first.dataset_id #=> "samples"
      #
      #dataset = bigquery.datasets.first
      #tables = dataset.tables
      #
      #tables.count #=> 7
      #tables.map &:table_id #=> [..., "shakespeare", "trigrams", "wikipedia"]


  end

  private

  def set_combos
    @parceiros = Parceiro.where(admin_id: current_admin[:id]).map { |p| [p.nome, p.id] }
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_evento
    #@evento = Evento.includes(dias: [:atividades]).find(params[:id])
    @evento = Evento.left_outer_joins(dias: [:atividades]).find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def evento_params
    params.require(:evento).permit(:titulo,
                                   :descricao,
                                   :data_inicio_s,
                                   :data_fim_s,
                                   :local,
                                   :codigo,
                                   :admin_id,
                                   :imagem,
                                   parceiro_ids: [],
                                   dias_attributes: [:id, :data_s, :_destroy,
                                                     atividades_attributes: [:id, :titulo, :descricao, :hora_s, :local, :_destroy]])
  end
end
