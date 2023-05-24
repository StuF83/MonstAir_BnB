# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

cities = ["hackney", "dalston", "shorditch", "greenwhich", "enfield"]
names = ["Bigfoot", "Grave Digger", "Maximum Destruction", "El Toro Loco", "Monster Mutt", "Zombie", "Megalodon", "Dragon", "EarthShaker, Son-uva Digger", "Bounty Hunter", "Avenger", "Iron Outlaw", "King Krunch", "Raminator", "Black Stallion", "Overkill Evolution", "Jurassic Attack", "Predator", "Gunslinger", "Madusa", "Scooby-Doo, Captain's Curse", "Mohawk Warrior", "Blue Thunder", "Gas Monkey Garage", "Northern Nightmare", "Storm Damage", "Bad Habit", "Backdraft"]
fee = [100, 150, 200, 250, 300]
28.times do
  random_name = names.sample
  @truck = Truck.create(
    name: random_name,
    description: Faker::Company.type,
    daily_fee: fee.sample,
    location: cities.sample
  )
  names.delete(random_name)
  puts "Name:#{@truck.name}\nDescription:#{@truck.description}\nDaily Fee:#{@truck.daily_fee}\nLocation:#{@truck.location}"
end
