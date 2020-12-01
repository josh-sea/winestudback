class Winery < ApplicationRecord
  # belongs_to :country
  has_many :wine_wineries
  has_many :wines, :through => :wine_wineries
end
