class Invader < ApplicationRecord
  belongs_to :city
  has_many :bookmarks
end
