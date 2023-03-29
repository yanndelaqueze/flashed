class Invader < ApplicationRecord
  belongs_to :city
  has_many :bookmarks
  has_one_attached :photo

  def postcode
    Geocoder.search([lat, lng]).first.data["address"]["postcode"]
  end
end
