#Admin.create!(
#    email: 'admin@admin.com',
#    password: 123456,
#    password_confirmation: 123456
#)
tmp_dir = Rails.root.join("tmp")

congresso = Evento.find_or_create_by!(
    titulo: 'XXXIII Congresso Nacional de Sorgo e Milho',
    descricao: 'Entre 1950 e 1968 as reuniões eram trienais.
A partir de 1968 passaram a ser bienais.
Até 1972 eram denominadas Reunião Brasileira de Milho.
De 1974 a 1980 foram denominadas Reunião Brasileira de Milho e Sorgo.
A partir de 1982 passaram a se chamar Congresso Nacional de Milho e Sorgo.',
    local: 'PALMAS/TO',
    data_inicio: Date.new(2020, 10, 5),
    data_fim: Date.new(2020, 10, 9),
    admin_id: 1
)

congresso.imagem.attach(io: File.open("#{tmp_dir}/seed_files/logo-congresso.png"), filename: "logo-congresso.png")