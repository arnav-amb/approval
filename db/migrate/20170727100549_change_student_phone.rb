class ChangeStudentPhone < ActiveRecord::Migration[5.1]
  def change
    change_column :students, :phone, :string
  end
end
