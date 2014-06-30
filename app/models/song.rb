class Song < ActiveRecord::Base
  GENRES = %w(rock rap country jazz ska)

  belongs_to :album


end
