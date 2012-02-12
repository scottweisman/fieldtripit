class RemoveTripStartFromTrips < ActiveRecord::Migration
  def up
    remove_column :trips, :trip_start
    remove_column :trips, :trip_end
      end

  def down
    add_column :trips, :trip_end, :datetiem
    add_column :trips, :trip_start, :datetime
  end
end
