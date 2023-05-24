# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

cities = ["hackney", "dalston", "shorditch", "greenwhich", "enfield"]
names = [
  "Bigfoot",
  "Grave Digger",
  "Maximum Destruction",
  "El Toro Loco", "Monster Mutt",
  "Zombie", "Megalodon", "Dragon",
  "EarthShaker",
  "Son-uva Digger",
  "Bounty Hunter",
  "Avenger",
  "Iron Outlaw",
  "King Krunch",
  "Raminator",
  "Black Stallion",
  "Overkill Evolution",
  "Jurassic Attack",
  "Predator",
  "Gunslinger",
  "Madusa",
  "Scooby-Doo",
  "Captain's Curse",
  "Mohawk Warrior",
  "Blue Thunder",
  "Gas Monkey Garage",
  "Northern Nightmare",
  "Storm Damage",
  "Bad Habit",
  "Backdraft"
]

monster_features = [
  "Cup holder",
  "Power stearing",
  "Selfie-stick holder",
  "Parking sensors",
  "London Congestion Charge included",
  "Child seat fitted",
  "Cruise controll",
  "airbags",
  "climage controll",
  "2,000 BHp Engine",
  "Tire Height: 1.17 meters",
  "Fule consumption 6mpg",
  "Top Speed 70mph",
  "Car crushability level 11",
  "Fluffy dice",
  "Cruise controll",
  "One carefull owner",
  "Sunroof"
]
fee = [100, 150, 200, 250, 300]

30.times do
  random_name = names.sample
  names.delete(random_name)
  @truck = Truck.create(
    name: random_name,
    description: Faker::Company.type,
    daily_fee: fee.sample,
    location: cities.sample
  )
  while @truck.features.size < 4
    feature = Feature.create(description: monster_features.sample)
    @truck.features << feature unless @truck.features.include?(feature)
  end
  @truck.save!

  puts "Name:#{@truck.name}\nDaily Fee:#{@truck.daily_fee}\nLocation:#{@truck.location}"
  @truck.features.each { |e| puts e.description }
  puts "\n"
end
