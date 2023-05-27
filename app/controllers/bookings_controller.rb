class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @truck = Truck.find(params[:truck_id])
    @booking = @truck.bookings.new(booking_params)
    num_days = (@booking.end_date - @booking.start_date).to_i
    @booking.total_cost = num_days * @truck.daily_fee
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @truck = Truck.find(params[:truck_id])
    @bookings = @truck.bookings
  end

  def create
    user = current_user
    truck = Truck.find(params[:truck_id])
    @booking = Booking.new(truck: truck, start_date: params[:start_date], end_date: params[:end_date], total_cost: params[:total_cost], user: user)

    if @booking.save!
      redirect_to confirmation_path(@booking)
    else
      render 'trucks/show'
    end
  end

  def confirmation
    @booking = Booking.find(params[:booking_id])
  end

  private
  def booking_params
    params.require(:booking).permit(:truck_id, :start_date, :end_date, :total_cost)
  end
end
