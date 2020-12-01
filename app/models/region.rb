class Region < ApplicationRecord
    has_many :country_regions
    has_many :countries, :trhough => :country_regions
end
