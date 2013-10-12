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

class Plane < ActiveRecord::Base
  attr_accessible :in_service_since, :incidents, :last_service, :luxury, :seats, :type
  belongs_to :airlin
end
