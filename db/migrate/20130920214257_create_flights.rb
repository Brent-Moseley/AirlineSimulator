class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :from
      t.string :to
      t.date :leaves
      t.date :arrives
      t.boolean :full

      t.timestamps
    end
  end
end
