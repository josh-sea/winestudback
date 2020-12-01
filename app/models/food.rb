class Food < ApplicationRecord
    has_many :wine_foods
    has_many :wines, :through => :wine_foods
end
