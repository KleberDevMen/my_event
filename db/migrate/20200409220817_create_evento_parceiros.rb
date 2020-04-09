class CreateEventoParceiros < ActiveRecord::Migration[5.2]
  def change
    create_table :evento_parceiros do |t|
      t.references :evento, foreign_key: true
      t.references :parceiro, foreign_key: true

      t.timestamps
    end
  end
end
