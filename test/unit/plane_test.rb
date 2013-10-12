# == Schema Information
#
# Table name: planes
#
#  id               :integer          not null, primary key
#  type             :string(255)
#  in_service_since :integer
#  last_service     :date
#  seats            :integer
#  luxury           :boolean
#  incidents        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class PlaneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
