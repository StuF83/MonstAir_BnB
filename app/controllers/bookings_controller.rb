class BookingsController < ApplicationController
  def new
    @booking = Booking.new(booking_params)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @truck = Truck.find(params[:truck_id])
    @bookings = @truck.bookings
  end

  def create
    @truck = Truck.find(params[:truck_id])
    @booking = @truck.bookings.new(booking_params)

    @user = User.first
    @booking.user_id = 1

    num_days = (@booking.end_date - @booking.start_date).to_i
    @booking.total_cost = num_days * @truck.daily_fee
    if @booking.save!
      redirect_to truck_booking_path(@truck, @booking)
    else
      render 'trucks/show'
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:truck_id, :start_date, :end_date, :total_cost)
  end
end
