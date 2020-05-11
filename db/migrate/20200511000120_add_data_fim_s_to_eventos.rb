class AddDataFimSToEventos < ActiveRecord::Migration[5.2]
  def change
    add_column :eventos, :data_fim_s, :string
  end
end
