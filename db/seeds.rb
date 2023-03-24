require "nokogiri"

file = File.open("invaders.xml")
document = Nokogiri::XML(file)

document.root.xpath("Placemark").each do |placemark|
  name = placemark.xpath("name").text
  # coordinates = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')
  longitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[0]
  latitude = placemark.xpath("Point/coordinates").text.gsub(' ', '').gsub(/\n/, '').split(',')[1]
  puts "#{name} / #{longitude} / #{latitude}"
end
