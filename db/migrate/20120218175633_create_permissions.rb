class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :user_id
      t.integer :student_id
      t.string :parent1_email
      t.string :parent2_email
      t.string :token
      t.datetime :sent_at

      t.timestamps
    end
  end
end
