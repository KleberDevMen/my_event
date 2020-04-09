class Evento < ApplicationRecord
  belongs_to :admin
  has_many :dias, inverse_of: :evento
  accepts_nested_attributes_for :dias, reject_if: :all_blank, allow_destroy: true
end
