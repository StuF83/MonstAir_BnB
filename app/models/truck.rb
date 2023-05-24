class Truck < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  has_and_belongs_to_many :features, join_table: :truck_feature

  validates :name, presence: true
  validates :description, presence: true
  validates :daily_fee, presence: true, numericality: { only_float: true }
end
