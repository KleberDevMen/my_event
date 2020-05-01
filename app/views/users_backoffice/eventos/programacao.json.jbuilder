# binding.pry
json.dias @evento.dias.each do |dia|
  json.id dia.id
  json.data dia.data

  json.atividades dia.atividades.each do |atv|
    json.id atv.id
    json.titulo atv.titulo
    json.descricao atv.descricao
  end
end