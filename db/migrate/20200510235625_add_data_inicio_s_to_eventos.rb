class AddDataInicioSToEventos < ActiveRecord::Migration[5.2]
  def change
    add_column :eventos, :data_inicio_s, :string
  end
end
