class Manufacturer < ApplicationRecord
  has_many :cars

  validates :name, :foundation, :country, :city, presence: true
end
