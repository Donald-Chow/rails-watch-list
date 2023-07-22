class Movie < ApplicationRecord
  self.table_name = 'wl1190_movies'
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  has_many :bookmarks, foreign_key: 'wl1190_movie_id'
end
