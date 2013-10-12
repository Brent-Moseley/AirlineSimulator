# == Schema Information
#
# Table name: flights
#
#  id         :integer          not null, primary key
#  from       :string(255)
#  to         :string(255)
#  leaves     :date
#  arrives    :date
#  full       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
