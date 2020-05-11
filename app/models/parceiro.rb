# == Schema Information
#
# Table name: parceiros
#
#  id         :bigint           not null, primary key
#  nome       :string
#  imagens    :json
#  descricao  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin_id   :bigint
#  img_link   :string
#  tipo       :string
#
class Parceiro < ApplicationRecord
  has_many :evento_parceiros, dependent: :destroy
  has_many :eventos, through: :evento_parceiros, dependent: :destroy

  belongs_to :admin

  extend Enumerize
  extend ActiveModel::Naming
  enumerize :tipo, in: %w(patrocinador apoiador organizador), i18n_scope: "tipo_parceiro_values", predicates: true

  #mount_uploaders :imagens, ImageUploader

  has_one_attached :imagem
end
