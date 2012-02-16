class RemoveInvitationIdFromTrips < ActiveRecord::Migration
    def up
      remove_column :trips, :invitation_id
    end

    def down
      remove_column :trips, :invitation_id, :integer
    end
  end