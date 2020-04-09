class AddImgLinkToParceiros < ActiveRecord::Migration[5.2]
  def change
    add_column :parceiros, :img_link, :string
  end
end
