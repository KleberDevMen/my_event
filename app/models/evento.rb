# == Schema Information
#
# Table name: eventos
#
#  id            :bigint           not null, primary key
#  titulo        :string
#  descricao     :string
#  local         :string
#  data_inicio   :date
#  data_fim      :date
#  codigo        :string
#  admin_id      :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  data_inicio_s :string
#  data_fim_s    :string
#
class Evento < ApplicationRecord
  belongs_to :admin
  has_many :dias, inverse_of: :evento, dependent: :destroy
  accepts_nested_attributes_for :dias, reject_if: :all_blank, allow_destroy: true

  has_many :evento_parceiros, dependent: :destroy
  has_many :parceiros, through: :evento_parceiros, dependent: :destroy

  has_one_attached :imagem

  after_create :set_codigo

  def set_codigo
    self.codigo = "#{Date.today.year}#{100+id}"
    self.save
  end
end
