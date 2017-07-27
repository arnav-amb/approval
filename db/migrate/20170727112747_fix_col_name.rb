class FixColName < ActiveRecord::Migration[5.1]
  def change
    rename_column :registrations, :type, :r_type
  end
end
