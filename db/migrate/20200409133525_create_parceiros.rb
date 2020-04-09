class CreateParceiros < ActiveRecord::Migration[5.2]
  def change
    create_table :parceiros do |t|
      t.string :nome
      t.json :imagens
      t.string :descricao

      t.timestamps
    end
  end
end
