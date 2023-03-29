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

puts "Creating Lille"
lille = City.new(
  name: "Lille",
  short: "LIL",
  country: "France",
  address: "Lille, France"
)
lille.save!
puts "Created Lille"
