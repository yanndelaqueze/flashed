class Bookmark < ApplicationRecord
  belongs_to :invader
  belongs_to :user
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
