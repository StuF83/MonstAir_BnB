class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def search
    @trucks = Truck.where(location: params[:location])
    render "index", locals: { trucks: @trucks }
  end
end
