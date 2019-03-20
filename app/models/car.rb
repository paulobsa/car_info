class Car < ApplicationRecord
  belongs_to :manufacturer
  enum transmission: [:MT, :AT]
  validates :model, :launch_date, :transmission, presence: true
end
