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

class Leg < ActiveRecord::Base
  attr_accessible :arrives, :from, :full, :leaves, :next, :prev, :to
end
