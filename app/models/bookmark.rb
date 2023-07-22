class Bookmark < ApplicationRecord
  self.table_name = 'wl1190_bookmarks'
  validates :comment, length: { minimum: 6 }
  validates :wl1990_movie_id, uniqueness: { scope: :wl1190_list_id }

  belongs_to :list, foreign_key: 'wl1190_list_id'
  belongs_to :movie, foreign_key: 'wl1190_movie_id'
end
# validates :name, presence: true, uniqueness: { scope: :account_id }
