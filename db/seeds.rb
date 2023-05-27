require 'faker'

cities = [
  "hackney",
  "dalston",
  "shoreditch",
  "greenwich",
  "enfield"
]

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
  "Cup Holder",
  "Power Steering",
  "Selfie-Stick Holder",
  "Parking Sensors",
  "London Congestion Charge Included",
  "Child Seat Fitted",
  "Cruise Control",
  "Airbags",
  "Climate Control",
  "Sound System",
  "Chick Magnet",
  "Eco Friendly",
  "Which? Truck Of The Year",
  "Car Crushability Rating 11",
  "Fluffy Dice",
  "Cruise Control",
  "One Careful Owner",
  "Sunroof",
  "Gun Rack"
]

fee = [
  100,
  150,
  200,
  250,
  300
]

User.create(first_name: "Homer", last_name: "Simpson", email: "homer@simpson.com", password: "password")
User.create(first_name: "Evel", last_name: "Knievel", email: "evel@knievel.com", password: "password")
User.create(first_name: "Robbie", last_name: "Knievel", email: "robbie@knievel.com", password: "password")
User.create(first_name: "Betsy", last_name: "Gardner", email: "betsy@gardner.com", password: "password")
User.create(first_name: "Jessie", last_name: "Graff", email: "jessie@graff.com", password: "password")

users = User.all

10.times do
  random_name = names.sample
  names.delete(random_name)
  @truck = Truck.create(
    name: random_name,
    description: Faker::Company.type,
    daily_fee: fee.sample,
    location: cities.sample,
    owner: users.sample
  )
  @truck.update(owner_first_name: @truck.owner.first_name)
  @truck.update(owner_second_name: @truck.owner.last_name)


  while @truck.features.size < 4
    new_feature = Feature.create(description: monster_features.sample)
    truck_features = @truck.features.map(&:description)
    @truck.features << new_feature unless truck_features.include?(new_feature.description)
  end
  @truck.save!

  puts "Name:#{@truck.name}"
  puts "Daily Fee:#{@truck.daily_fee}"
  puts "Location:#{@truck.location}"
  puts "Owner:#{@truck.owner.first_name}"
  @truck.features.each { |e| puts e.description }
  puts "\n"
end
