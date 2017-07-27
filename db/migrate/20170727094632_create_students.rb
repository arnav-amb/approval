class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :roll_no
      t.integer :phone
      t.string :dept
      t.float :cgpa

      t.timestamps
    end
  end
end
