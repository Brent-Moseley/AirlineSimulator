# == Schema Information
#
# Table name: airlins
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  balance    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airlin < ActiveRecord::Base
  attr_accessible :balance, :name
  has_many :planes
  has_many :flights
end
