
json.dias do |dias|
  dias.array!(@evento.dias) do |dia|

    json.data dia.data_s
  

    json.atividades do |atvs|
      atvs.array!(dia.atividades) do |atv|
        json.hora atv.hora_s
        json.titulo atv.titulo
        json.descricao atv.descricao
        json.local atv.local
      end
    end
    
  end

end