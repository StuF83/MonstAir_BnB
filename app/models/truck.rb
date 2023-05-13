class Truck < ApplicationRecord
  #has_many :users
  has_many :bookings
  has_many :users, through: :booking
  #validates :model, :make
  #:user :daily_fee, :description, :height, :wheel_height, presence: true
  #validates :daily_fee, :height, :wheel_height, numericality: { greater_than_or_equal_to: 0 }
end
