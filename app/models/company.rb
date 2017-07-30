class Company < ApplicationRecord
  has_many :registrations, dependent: :destroy
end
