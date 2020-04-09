class AddAdminToParceiros < ActiveRecord::Migration[5.2]
  def change
    add_reference :parceiros, :admin, foreign_key: true
  end
end
