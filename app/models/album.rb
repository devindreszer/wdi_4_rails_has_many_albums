class Album < ActiveRecord::Base
  GENRES = %w(rock rap country jazz ska)
  # dependent: :destroy - will destroy, or remove, all child objects in memory and in the db
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :genre, inclusion: { in: GENRES }
end
