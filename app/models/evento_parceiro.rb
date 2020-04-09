class EventoParceiro < ApplicationRecord
  belongs_to :evento
  belongs_to :parceiro
end
