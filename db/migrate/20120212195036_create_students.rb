class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_first_name
      t.string :student_last_name
      t.string :parent1_email
      t.string :parent2_email
      t.integer :classroom_id

      t.timestamps
    end
  end
end
