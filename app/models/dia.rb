class Dia < ApplicationRecord
  belongs_to :evento
  has_many :atividades, inverse_of: :dia, dependent: :destroy
  accepts_nested_attributes_for :atividades, reject_if: :all_blank, allow_destroy: true
end
