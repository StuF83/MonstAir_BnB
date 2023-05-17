class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :truck

  validates :start_date, comparison: { less_than: :end_date }
end
