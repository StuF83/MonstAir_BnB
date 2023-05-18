class BookingsController < ApplicationController
  # def show
  #   user = User.create(email: "test1@test", password: "1234567")
  #   truck = Truck.create(name: "My Big Truck", description: "Its a big truck", daily_fee: "123")
  #   @booking = Booking.new(start_date: "01/02/2010", end_date: "02/03/2011")
  #   @booking.truck = truck
  #   @booking.user = user
  #   @booking.save!

  #   render "trucks/show", locals: { booking: @booking }
  # end

  def index
    @truck = Truck.find(params[:truck_id])
    @bookings = @truck.bookings
  end
end
