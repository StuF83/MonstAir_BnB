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
30.times do
  @truck = Truck.create(
    name: Faker::Name.name,
    description: Faker::Company.type,
    daily_fee: fee.sample,
    location: cities.sample
  )
  puts "Name:#{@truck.name}\nDaily Fee:#{@truck.description}\nDaily Fee:#{@truck.daily_fee}\nLocation:#{@truck.location}"
end
