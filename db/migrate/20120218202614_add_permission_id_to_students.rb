class AddPermissionIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :permission_id, :integer

  end
end
