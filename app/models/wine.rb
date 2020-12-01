class Wine < ApplicationRecord
    has_many :wine_vintages
    has_many :vintages, :through => :wine_vintages

    has_many :wine_foods
    has_many :foods, :through => :wine_foods

    has_many :wine_types
    has_many :types, :through => :wine_types

    has_many :wine_countries
    has_many :countries, :through => :wine_countries

    has_many :wine_wineries
    has_many :wineries, :through => :wine_wineries

    has_many :qrcodes

end
