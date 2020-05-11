class AddTipoToParceiros < ActiveRecord::Migration[5.2]
  def change
    add_column :parceiros, :tipo, :string
  end
end
