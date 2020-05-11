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
require 'test_helper'

class DiaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
