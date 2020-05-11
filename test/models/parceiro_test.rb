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
require 'test_helper'

class ParceiroTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
