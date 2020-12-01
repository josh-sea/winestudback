class WineWinery < ApplicationRecord
  belongs_to :wine
  belongs_to :winery
end
