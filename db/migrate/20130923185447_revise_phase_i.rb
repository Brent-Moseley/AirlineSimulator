class RevisePhaseI < ActiveRecord::Migration
  def change
  	change_table :planes do |t|
  		t.float :lat
  		t.float :lng
  		t.float :vx
  		t.float :vy
  	end
  end


end
