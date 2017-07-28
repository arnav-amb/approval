class Registration < ApplicationRecord
  belongs_to :student
  belongs_to :company
  serialize :departments
end