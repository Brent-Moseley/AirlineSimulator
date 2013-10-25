class FixDates < ActiveRecord::Migration
  def up
  	change_column :flights, :leaves, :datetime
  	change_column :flights, :arrives, :datetime

  end

  def down
  end
end
