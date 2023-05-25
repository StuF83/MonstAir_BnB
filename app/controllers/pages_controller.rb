class PagesController < ApplicationController
  def home
  end

  def user
    @user = current_user
    @bookings = current_user.bookings
    @trucks = Truck.all
  end
end
