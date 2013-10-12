class CreateAirlins < ActiveRecord::Migration
  def change
    create_table :airlins do |t|
      t.string :name
      t.integer :balance

      t.timestamps
    end
  end
end
