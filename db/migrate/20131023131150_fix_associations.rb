class FixAssociations < ActiveRecord::Migration
  def up
  	  remove_column :airlins, :plane_id
  	  remove_column :airlins, :flight_id
  	  remove_column :airports, :airlin_id
  	  remove_column :flights, :leg_id
  	  remove_column :legs, :plane_id


	  change_table :airlins do |t|
		t.integer :airport_id
	  end  	

	  change_table :flights do |t|
		t.integer :airlin_id
	  end  	

	  change_table :planes do |t|
		t.integer :airlin_id
	  end  		  	  

  end

  def down
  end
end
