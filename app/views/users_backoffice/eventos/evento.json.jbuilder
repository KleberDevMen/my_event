json.id @evento.id
json.code @evento.codigo
json.img_link url_for(@evento.imagem)
json.titulo @evento.titulo
json.data_inicio_s @evento.data_inicio_s
json.local @evento.local
json.descricao @evento.descricao

json.patrocinadores do |parceiros|
    parceiros.array!(@evento.parceiros.select{|p| p.tipo.patrocinador? }) do |p|
        json.nome p.nome
        json.descricao p.descricao
        json.img_link url_for(p.imagem)
    end
end

json.apoiadores do |ap|
    ap.array!(@evento.parceiros.select{|p| p.tipo.apoiador? }) do |a|
        json.nome a.nome
        json.descricao a.descricao
        json.img_link url_for(a.imagem)
    end
end


json.organizadores do |parceiros|
    parceiros.array!(@evento.parceiros.select{|p| p.tipo.organizador? }) do |p|
        json.nome p.nome
        json.descricao p.descricao
        json.img_link url_for(p.imagem)
    end
end