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

puts "Creating Paris Invaders"
file = File.open("db/paris_invaders.xml")
document = Nokogiri::XML(file)
document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  status = placemark.xpath("description").text
  Invader.create!(
    name: name,
    longitude: longitude,
    latitude: latitude,
    status: status,
    city: paris
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end
puts "Created Paris Invaders"

puts "Creating Fontainebleau"
fontainebleau = City.new(
  name: "Fontainebleau",
  short: "FTBL",
  country: "France",
  address: "Fontainebleau, France"
)
fontainebleau.save!
puts "Created Fontainebleau"

puts "Creating Fontainebleau Invaders"
file = File.open("db/fontainebleau_invaders.xml")
document = Nokogiri::XML(file)
document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  status = placemark.xpath("description").text
  Invader.create!(
    name: name,
    longitude: longitude,
    latitude: latitude,
    status: status,
    city: fontainebleau
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end
puts "Created Fontainebleau Invaders"

puts "Creating Lille"
lille = City.new(
  name: "Lille",
  short: "LIL",
  country: "France",
  address: "Lille, France"
)
lille.save!
puts "Created Lille"

puts "Creating Lille Invaders"
file = File.open("db/lille_invaders.xml")
document = Nokogiri::XML(file)
document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  status = placemark.xpath("description").text
  Invader.create!(
    name: name,
    longitude: longitude,
    latitude: latitude,
    status: status,
    city: lille
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end
puts "Created Lille Invaders"

puts "Creating Nantes"
nantes = City.new(
  name: "Nantes",
  short: "NAN",
  country: "France",
  address: "Nantes, France"
)
nantes.save!
puts "Created Nantes"

puts "Creating Nantes Invaders"
file = File.open("db/nantes_invaders.xml")
document = Nokogiri::XML(file)
document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  status = placemark.xpath("description").text
  Invader.create!(
    name: name,
    longitude: longitude,
    latitude: latitude,
    status: status,
    city: nantes
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end
puts "Created Nantes Invaders"

puts "Creating Marseille"
marseille = City.new(
  name: "Marseille",
  short: "MARS",
  country: "France",
  address: "Marseille, France"
)
marseille.save!
puts "Created Marseille"

puts "Creating Marseille Invaders"
file = File.open("db/marseille_invaders.xml")
document = Nokogiri::XML(file)
document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  status = placemark.xpath("description").text
  Invader.create!(
    name: name,
    longitude: longitude,
    latitude: latitude,
    status: status,
    city: marseille
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end
puts "Created Marseille Invaders"

puts "Creating London"
london = City.new(
  name: "London",
  short: "LDN",
  country: "United Kingdom",
  address: "London, United Kingdom"
)
london.save!
puts "Created London"

puts "Creating London Invaders"
file = File.open("db/london_invaders.xml")
document = Nokogiri::XML(file)
document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  status = placemark.xpath("description").text
  Invader.create!(
    name: name,
    longitude: longitude,
    latitude: latitude,
    status: status,
    city: london
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end
puts "Created London Invaders"

puts "Creating Basel"
basel = City.new(
  name: "Basel",
  short: "BSL",
  country: "Switzerland",
  address: "Basel, Switzerland"
)
basel.save!
puts "Created Basel"

puts "Creating Basel Invaders"
file = File.open("db/basel_invaders.xml")
document = Nokogiri::XML(file)
document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  status = placemark.xpath("description").text
  Invader.create!(
    name: name,
    longitude: longitude,
    latitude: latitude,
    status: status,
    city: basel
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end
puts "Created Basel Invaders"

puts "Creating Cap Ferret"
cap_ferret = City.new(
  name: "Cap Ferret",
  short: "CAPF",
  country: "France",
  address: "Cap Ferret, France"
)
cap_ferret.save!
puts "Created Cap Ferret"

puts "Creating Cap Ferret Invaders"
file = File.open("db/cap_ferret_invaders.xml")
document = Nokogiri::XML(file)
document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  status = placemark.xpath("description").text
  Invader.create!(
    name: name,
    longitude: longitude,
    latitude: latitude,
    status: status,
    city: cap_ferret
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end
puts "Created Cap Ferret Invaders"

puts "Creating Versailles"
versailles = City.new(
  name: "Versailles",
  short: "VRS",
  country: "France",
  address: "Versailles, France"
)
versailles.save!
puts "Created Versailles"

puts "Creating Versailles Invaders"
file = File.open("db/versailles_invaders.xml")
document = Nokogiri::XML(file)
document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  status = placemark.xpath("description").text
  Invader.create!(
    name: name,
    longitude: longitude,
    latitude: latitude,
    status: status,
    city: versailles
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end
puts "Created Versailles Invaders"

puts "Creating Lyon"
lyon = City.new(
  name: "Lyon",
  short: "LY",
  country: "France",
  address: "Lyon, France"
)
lyon.save!
puts "Created Lyon"

puts "Creating Lyon Invaders"
file = File.open("db/lyon_invaders.xml")
document = Nokogiri::XML(file)
document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  status = placemark.xpath("description").text
  Invader.create!(
    name: name,
    longitude: longitude,
    latitude: latitude,
    status: status,
    city: lyon
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end
puts "Created Lyon Invaders"

puts "Creating Unmapped Invaders"
