require "nokogiri"
require "json"

Invader.delete_all
City.delete_all

filepath = "db/unmapped.json"
payload = File.read(filepath)
results = JSON.parse(payload)

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
    city: paris,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end

results["paris"].nil? ? nil : results["paris"].each do |invader|
  puts "#{invader['name']} / #{invader['status']}"
  name = invader['name']
  status = invader['status']
  Invader.create!(
    name: name,
    status: status,
    city: paris,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
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
    city: fontainebleau,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end

results["fontainebleau"].nil? ? nil : results["fontainebleau"].each do |invader|
  puts "#{invader['name']} / #{invader['status']}"
  name = invader['name']
  status = invader['status']
  Invader.create!(
    name: name,
    status: status,
    city: fontainebleau,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
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
    city: lille,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end

results["lille"].nil? ? nil : results["lille"].each do |invader|
  puts "#{invader['name']} / #{invader['status']}"
  name = invader['name']
  status = invader['status']
  Invader.create!(
    name: name,
    status: status,
    city: lille,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
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
    city: nantes,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end

results["nantes"].nil? ? nil : results["nantes"].each do |invader|
  puts "#{invader['name']} / #{invader['status']}"
  name = invader['name']
  status = invader['status']
  Invader.create!(
    name: name,
    status: status,
    city: nantes,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
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
    city: marseille,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end

results["marseille"].nil? ? nil : results["marseille"].each do |invader|
  puts "#{invader['name']} / #{invader['status']}"
  name = invader['name']
  status = invader['status']
  Invader.create!(
    name: name,
    status: status,
    city: marseille,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
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
    city: london,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end

results["london"].nil? ? nil : results["london"].each do |invader|
  puts "#{invader['name']} / #{invader['status']}"
  name = invader['name']
  status = invader['status']
  Invader.create!(
    name: name,
    status: status,
    city: london,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
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
    city: basel,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end

results["basel"].nil? ? nil : results["basel"].each do |invader|
  puts "#{invader['name']} / #{invader['status']}"
  name = invader['name']
  status = invader['status']
  Invader.create!(
    name: name,
    status: status,
    city: basel,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
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
    city: cap_ferret,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end

results["cap_ferret"].nil? ? nil : results["cap_ferret"].each do |invader|
  puts "#{invader['name']} / #{invader['status']}"
  name = invader['name']
  status = invader['status']
  Invader.create!(
    name: name,
    status: status,
    city: cap_ferret,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
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
    city: versailles,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end

results["versailles"].nil? ? nil : results["versailles"].each do |invader|
  puts "#{invader['name']} / #{invader['status']}"
  name = invader['name']
  status = invader['status']
  Invader.create!(
    name: name,
    status: status,
    city: versailles,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
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
    city: lyon,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
  puts "#{name} / #{longitude} / #{latitude} / #{status}"
end

results["lyon"].nil? ? nil : results["lyon"].each do |invader|
  puts "#{invader['name']} / #{invader['status']}"
  name = invader['name']
  status = invader['status']
  Invader.create!(
    name: name,
    status: status,
    city: lyon,
    url: "http://invader.spotter.free.fr/images/#{name}-grosplan.png".strip
  )
end

puts "Created Lyon Invaders"
