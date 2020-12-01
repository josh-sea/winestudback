class WineFood < ApplicationRecord
  belongs_to :wine
  belongs_to :food
end
