# == Schema Information
#
# Table name: atividades
#
#  id         :bigint           not null, primary key
#  titulo     :string
#  descricao  :string
#  hora       :time
#  dia_id     :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  hora_s     :string
#
require 'test_helper'

class AtividadeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
