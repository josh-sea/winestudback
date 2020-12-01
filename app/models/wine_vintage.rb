class WineVintage < ApplicationRecord
    belongs_to :wine
    belongs_to :vintage
end
