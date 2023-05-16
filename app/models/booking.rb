class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :truck

  validates :total_cost, :start_date, :end_date, presence: true
  validates :start_date, comparison: { less_than: :end_date }
end
