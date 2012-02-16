class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :classroom_id
      t.integer :trip_id
      
      t.timestamps
    end
  end
end
