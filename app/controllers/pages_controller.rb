class PagesController < ApplicationController
  def home
  end

  def user
    @user = current_user
    @bookings = current_user.bookings
    @trucks = Truck.all
    @id = @user.id
    @rentals = []

    @trucks.each do |truck|
      if truck.owner_id == @id
        @rentals << truck.name
      end
    end

    @rented = @rentals
  end
end
