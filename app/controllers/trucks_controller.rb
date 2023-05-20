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

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(truck_params)
    @truck.save
    render 'owner_show', locals: { truck: @truck }
  end

  private

  def truck_params
    params.require(:truck).permit(:name, :description, :daily_fee)
  end
end
