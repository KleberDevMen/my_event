# == Schema Information
#
# Table name: dias
#
#  id         :bigint           not null, primary key
#  data       :date
#  evento_id  :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  data_s     :string
#
class Dia < ApplicationRecord
  belongs_to :evento
  has_many :atividades, inverse_of: :dia, dependent: :destroy
  accepts_nested_attributes_for :atividades, reject_if: :all_blank, allow_destroy: true
end
