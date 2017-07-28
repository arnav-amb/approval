class AddDepartmentsToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :departments, :string
  end
end
