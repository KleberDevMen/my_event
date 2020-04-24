class AddCamposStringsToAtividades < ActiveRecord::Migration[5.2]
  def change
    add_column :atividades, :hora_s, :string
  end
end
