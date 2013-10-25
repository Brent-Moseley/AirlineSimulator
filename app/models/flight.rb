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

class Flight < ActiveRecord::Base
  attr_accessible :arrives, :from, :full, :leaves, :to, :airlin_id
  has_many :legs
  belongs_to :airlin
end
