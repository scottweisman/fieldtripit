class AddTripStartToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :start_date, :date
    add_column :trips, :start_time, :time
    add_column :trips, :end_date, :date
    add_column :trips, :end_time, :time

  end
end
