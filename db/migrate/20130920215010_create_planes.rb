class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :type
      t.integer :in_service_since
      t.date :last_service
      t.integer :seats
      t.boolean :luxury
      t.integer :incidents

      t.timestamps
    end
  end
end
