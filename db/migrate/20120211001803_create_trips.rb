class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :place
      t.datetime :trip_start
      t.datetime :trip_end
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
