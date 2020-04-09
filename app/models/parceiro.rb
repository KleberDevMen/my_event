class Parceiro < ApplicationRecord
  has_many :evento_parceiros, dependent: :destroy
  has_many :eventos, through: :evento_parceiros, dependent: :destroy

  belongs_to :admin

  mount_uploaders :imagens, ImageUploader
end
