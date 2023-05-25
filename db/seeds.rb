# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

cities = ["hackney", "dalston", "shorditch", "greenwhich", "enfield"]
fee = [100, 150, 200, 250, 300]

5.times do
  @user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password' # Set a default password for the users
  )
  6.times do
    @truck = Truck.create(
      name: Faker::Name.name,
      description: Faker::Company.type,
      daily_fee: fee.sample,
      location: cities.sample,
      owner_id: @user.id,
      owner_first_name: @user.first_name,
      owner_second_name: @user.last_name
    )
    puts "Name:#{@truck.name}\nDaily Fee:#{@truck.description}\nDaily Fee:#{@truck.daily_fee}\nLocation:#{@truck.location}"
    @truck.save!
  end
end
