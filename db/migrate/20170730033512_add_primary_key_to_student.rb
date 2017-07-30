class AddPrimaryKeyToStudent < ActiveRecord::Migration[5.1]
  def change
    add_index :students, :roll_no, :unique => true
  end
end
