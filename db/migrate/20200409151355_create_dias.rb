class CreateDias < ActiveRecord::Migration[5.2]
  def change
    create_table :dias do |t|
      t.date :data
      t.belongs_to :evento, foreign_key: true

      t.timestamps
    end
  end
end
