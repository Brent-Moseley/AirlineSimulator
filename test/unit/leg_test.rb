# == Schema Information
#
# Table name: legs
#
#  id         :integer          not null, primary key
#  from       :string(255)
#  to         :string(255)
#  leaves     :date
#  arrives    :date
#  full       :boolean
#  next       :integer
#  prev       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LegTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
