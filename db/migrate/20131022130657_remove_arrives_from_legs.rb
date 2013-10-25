class RemoveArrivesFromLegs < ActiveRecord::Migration
  def up
  	remove_column :legs, :arrives
  	remove_column :legs, :leaves
  end

  def down
  end
end
