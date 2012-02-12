class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :classroom_name
      t.integer :user_id

      t.timestamps
    end
  end
end
