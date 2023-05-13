class AddTruckForeignKeyToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :trucks, null: false, foreign_key: true
  end
end
