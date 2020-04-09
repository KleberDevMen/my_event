class CreateAtividades < ActiveRecord::Migration[5.2]
  def change
    create_table :atividades do |t|
      t.string :titulo
      t.string :descricao
      t.time :hora
      t.belongs_to :dia, foreign_key: true

      t.timestamps
    end
  end
end
