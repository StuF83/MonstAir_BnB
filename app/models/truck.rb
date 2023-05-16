class Truck < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :daily_fee, presence: true, numericality: { only_float: true }
end
