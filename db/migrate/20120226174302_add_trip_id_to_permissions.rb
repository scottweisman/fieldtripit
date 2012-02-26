class AddTripIdToPermissions < ActiveRecord::Migration
  def change
    add_column :permissions, :trip_id, :integer

  end
end
