class Shelter < ApplicationRecord
  validates :country, :city, :address, presence: true
end
