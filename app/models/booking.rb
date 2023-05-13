class Booking < ApplicationRecord
  belongs_to :user, :truck
 # validates :start_date, :end_date, :total_cost, :user, :truck, presence: true
 # validates :start_date, :end_date, :total_cost, numericality: true
end
