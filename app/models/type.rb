class Type < ApplicationRecord
    has_many :wine_types
    has_many :wines, :through => :wine_types
end
