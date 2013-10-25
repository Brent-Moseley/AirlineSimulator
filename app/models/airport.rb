# == Schema Information
#
# Table name: airports
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  abbrev     :string(255)
#  city       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airport < ActiveRecord::Base
  attr_accessible :abbrev, :city, :name
  has_many :airlin
end
