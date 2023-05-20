class BookingsController < ApplicationController
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
    @booking.user = current_user

    num_days = (@booking.end_date - @booking.start_date).to_i
    @booking.total_cost = num_days * @truck.daily_fee

    if @booking.save
      redirect_to truck_booking_path(@truck, @booking)
    else
      render 'trucks/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
