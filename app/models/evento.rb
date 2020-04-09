class Evento < ApplicationRecord
  belongs_to :admin
  has_many :dias, inverse_of: :evento, dependent: :destroy
  accepts_nested_attributes_for :dias, reject_if: :all_blank, allow_destroy: true

  has_many :evento_parceiros, dependent: :destroy
  has_many :parceiros, through: :evento_parceiros, dependent: :destroy

  after_create :set_codigo

  def set_codigo
    self.codigo = "#{Date.today.year}#{100+id}"
    self.save
  end
end
