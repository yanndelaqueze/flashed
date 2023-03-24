require "nokogiri"

file = File.open("invaders.xml")
document = Nokogiri::XML(file)

document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  coordinates = placemark.xpath("coordinates").text
  puts "#{name} #{coordinates}"
end
