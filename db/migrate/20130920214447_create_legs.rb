class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.string :from
      t.string :to
      t.date :leaves
      t.date :arrives
      t.boolean :full
      t.integer :next
      t.integer :prev

      t.timestamps
    end
  end
end
