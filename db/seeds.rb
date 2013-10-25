# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Flight.delete_all
Leg.delete_all

one = Flight.create(:from => 'Phoenix', :to => 'Los Angeles', 
	:leaves => DateTime.strptime("09/01/2013 17:00", "%m/%d/%Y %H:%M"),
	:arrives => DateTime.strptime("09/01/2013 18:04", "%m/%d/%Y %H:%M"),
	:full => false)

Leg.create(:from => 'Phoenix', :to => 'Las Vegas', :full => 'false', :flight_id => one.id)
Leg.create(:from => 'Las Vegas', :to => 'Los Angeles', :full => 'true', :flight_id => one.id)


two = Flight.create(:from => 'Denver', :to => 'Miami', 
	:leaves => DateTime.strptime("10/16/2013 18:25", "%m/%d/%Y %H:%M"),
	:arrives => DateTime.strptime("10/17/2013 00:34", "%m/%d/%Y %H:%M"),
	:full => false)

Leg.create(:from => 'Denver', :to => 'St. Louis', :full => 'true', :flight_id => two.id)
Leg.create(:from => 'St. Louis', :to => 'Miami', :full => 'true', :flight_id => two.id)

three = Flight.create(:from => 'New York', :to => 'Portland', 
	:leaves => DateTime.strptime("11/12/2013 8:45", "%m/%d/%Y %H:%M"),
	:arrives => DateTime.strptime("11/12/2013 11:09", "%m/%d/%Y %H:%M"),
	:full => false)

Leg.create(:from => 'New York', :to => 'Chicago', :full => 'false', :flight_id => three.id)
Leg.create(:from => 'Chicago', :to => 'Las Vegas', :full => 'true', :flight_id => three.id)
Leg.create(:from => 'Las Vegas', :to => 'Portland', :full => 'true', :flight_id => three.id)


four = Flight.create(:from => 'Phoenix', :to => 'Omaha', 
	:leaves => DateTime.strptime("12/20/2013 6:55", "%m/%d/%Y %H:%M"),
	:arrives => DateTime.strptime("12/20/2013 10:14", "%m/%d/%Y %H:%M"),
	:full => false)

Leg.create(:from => 'Phoenix', :to => 'Omaha', :full => 'true', :flight_id => four.id)
