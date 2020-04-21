json.extract! evento, :id, :titulo, :descricao, :local, :data_inicio, :data_fim, :codigo, :admin_id, :created_at, :updated_at
json.url evento_url(evento, format: :json)
