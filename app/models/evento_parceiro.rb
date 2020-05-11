# == Schema Information
#
# Table name: evento_parceiros
#
#  id          :bigint           not null, primary key
#  evento_id   :bigint
#  parceiro_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class EventoParceiro < ApplicationRecord
  belongs_to :evento
  belongs_to :parceiro
end
