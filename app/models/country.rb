class Country < ApplicationRecord
    has_many :country_regions
    has_many :wine_countries
    has_many :regions, :through => :country_regions
    has_many :wines, :through => :wine_countries
end
