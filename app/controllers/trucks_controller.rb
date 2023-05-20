class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
    @booking = Booking.new
  end

  def search
    @trucks = Truck.where(location: params[:location].downcase, daily_fee: params[:daily_fee])
    render "index", locals: { trucks: @trucks }
  end
end
