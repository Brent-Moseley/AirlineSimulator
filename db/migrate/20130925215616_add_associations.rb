class AddAssociations < ActiveRecord::Migration
  def change
  	change_table :airports do |t|
  		t.integer :airlin_id
  	end

  	change_table :airlins do |t|
  		t.integer :plane_id
  		t.integer :flight_id
  	end

  	change_table :flights do |t|
  		t.integer :leg_id  
  	end

  end

end
