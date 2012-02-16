class RemoveInvitationIdFromClassrooms < ActiveRecord::Migration
  def up
    remove_column :classrooms, :invitation_id
  end

  def down
    remove_column :classrooms, :invitation_id, :integer
  end
end
