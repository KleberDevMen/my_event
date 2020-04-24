class AddDataSToDias < ActiveRecord::Migration[5.2]
  def change
    add_column :dias, :data_s, :string
  end
end
