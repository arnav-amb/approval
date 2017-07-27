class AddCompanyToRegistrations < ActiveRecord::Migration[5.1]
  def change
    add_reference :registrations, :company, foreign_key: true
  end
end
