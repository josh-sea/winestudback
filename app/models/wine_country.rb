class WineCountry < ApplicationRecord
  belongs_to :country
  belongs_to :wine
end
