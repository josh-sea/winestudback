class Vintage < ApplicationRecord
    has_many :wine_vintages
    has_many :wines, :through => :wine_vintages
end
