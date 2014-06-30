class Song < ActiveRecord::Base
  belongs_to :album

  validates :title, :artist, presence: true
  validates :duration, numericality: { greater_than: 60 }
end
