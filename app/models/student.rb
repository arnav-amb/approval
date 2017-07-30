class Student < ApplicationRecord
  has_many :registrations, dependent: :destroy
end
