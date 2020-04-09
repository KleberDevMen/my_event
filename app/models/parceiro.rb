class Parceiro < ApplicationRecord
  has_many :evento_parceiros
  has_many :eventos, through: :evento_parceiros

  mount_uploaders :imagens, ImageUploader
end
