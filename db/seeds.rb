require "nokogiri"

Invader.delete_all
City.delete_all

puts "Creating Paris"
paris = City.new(
  name: "Paris",
  short: "PA",
  country: "France",
  address: "Paris, France"
)
paris.save!
puts "Created Paris"

# puts "Creating Paris Invaders"
# file = File.open("db/paris_invaders.xml")
# document = Nokogiri::XML(file)
# document.root.xpath("Placemark").each do |placemark|
#   name = placemark.xpath("name").text
#   longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
#   latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
#   status = placemark.xpath("description").text
#   Invader.create!(
#     name: name,
#     longitude: longitude,
#     latitude: latitude,
#     status: status,
#     city: paris
#   )
#   puts "#{name} / #{longitude} / #{latitude} / #{status}"
# end
# puts "Created Paris Invaders"

puts "Creating Fontainebleau"
fontainebleau = City.new(
  name: "Fontainebleau",
  short: "FTBL",
  country: "France",
  address: "Fontainebleau, France"
)
fontainebleau.save!
puts "Created Fontainebleau"

puts "Creating Lille"
lille = City.new(
  name: "Lille",
  short: "LIL",
  country: "France",
  address: "Lille, France"
)
lille.save!
puts "Created Lille"

puts "Creating Nantes"
lille = City.new(
  name: "Nantes",
  short: "NAN",
  country: "France",
  address: "Nantes, France"
)
lille.save!
puts "Created Nantes"

puts "Creating Marseille"
lille = City.new(
  name: "Marseille",
  short: "MARS",
  country: "France",
  address: "Marseille, France"
)
lille.save!
puts "Created Marseille"

puts "Creating London"
lille = City.new(
  name: "London",
  short: "LDN",
  country: "United Kingdom",
  address: "London, United Kingdom"
)
lille.save!
puts "Created London"

puts "Creating Basel"
lille = City.new(
  name: "Basel",
  short: "BSL",
  country: "Switzerland",
  address: "Basel, Switzerland"
)
lille.save!
puts "Created Basel"

puts "Creating Cap Ferret"
lille = City.new(
  name: "Cap Ferret",
  short: "CAPF",
  country: "France",
  address: "Cap Ferret, France"
)
lille.save!
puts "Created Cap Ferret"

puts "Creating Versailles"
lille = City.new(
  name: "Versailles",
  short: "VRS",
  country: "France",
  address: "Versailles, France"
)
lille.save!
puts "Created Versailles"

puts "Creating Lyon"
lille = City.new(
  name: "Lyon",
  short: "LY",
  country: "France",
  address: "Lyon, France"
)
lille.save!
puts "Created Lyon"
