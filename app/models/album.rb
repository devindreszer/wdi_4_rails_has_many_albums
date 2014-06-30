class Album < ActiveRecord::Base
  # dependent: :destroy - will destroy, or remove, all child objects in memory and in the db
  has_many :songs, dependent: :destroy
end
