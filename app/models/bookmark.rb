class Bookmark < ApplicationRecord
  belongs_to :invader
  belongs_to :user
  has_many_attached :photos
end
