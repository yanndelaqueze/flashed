class Bookmark < ApplicationRecord
  belongs_to :invader
  belongs_to :user
end
