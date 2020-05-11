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
require 'test_helper'

class EventoParceiroTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
