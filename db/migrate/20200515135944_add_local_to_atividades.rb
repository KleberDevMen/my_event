class AddLocalToAtividades < ActiveRecord::Migration[5.2]
  def change
    add_column :atividades, :local, :string
  end
end
