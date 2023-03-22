class Invader < ApplicationRecord
  belongs_to :city
  has_many :bookmarks
  has_one_attached :photo
end
