class TrucksController < ApplicationController
  before_action :authenticate_user!, only: [:create]

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
    @user = current_user
    @truck = Truck.new(truck_params)
    @truck.owner = @user
    @truck.owner_first_name = @user.first_name
    @truck.owner_second_name = @user.last_name
    if @truck.save
      flash[:notice] = "HERE'S YOUR NEW LISTING!"
      redirect_to truck_path(@truck)
    else
      render :new
    end
  end

  def edit
    @truck = Truck.find(params[:id])
  end

  def update
    @truck = Truck.find(params[:id])
    @truck.update(truck_params)
    redirect_to truck_path(@truck)
  end

  def destroy
    @truck = Truck.find(params[:id])
    @truck.destroy
  end

  private
  def truck_params
    params.require(:truck).permit(:name, :description, :location, :daily_fee)
  end
end
