# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do 
  Car.create(
    number: %w{A B C D E F G H}.sample(3).join + rand(100..999).to_s,
    model: %w{AUDI BMW HONDA KIA}.sample
  )
end


%w{ 
  Vilnius
  Kaunas
  Klaipeda
  Siauliai
  Skuodas
  Seimas
}.each do |parking_name|
  Parking.create(name: parking_name, capacity: rand(3..6))
end
