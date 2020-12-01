class WineType < ApplicationRecord
  belongs_to :wine
  belongs_to :type
end
