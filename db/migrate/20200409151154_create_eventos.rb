class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.string :descricao
      t.string :local
      t.date :data_inicio
      t.date :data_fim
      t.string :codigo
      t.belongs_to :admin, foreign_key: true

      t.timestamps
    end
  end
end
