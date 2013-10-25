class AddAssociations2 < ActiveRecord::Migration
  def up
  	  change_table :legs do |t|
  		t.integer :plane_id
  		t.integer :flight_id
  	  end
  end

  def down
  end
end
