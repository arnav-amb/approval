class AddPanToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :pan, :string
    add_column :students, :address, :text
    add_column :students, :xth, :string
    add_column :students, :xiith, :string
  end
end
