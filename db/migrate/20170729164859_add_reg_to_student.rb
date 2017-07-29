class AddRegToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :reg_no, :string
  end
end
