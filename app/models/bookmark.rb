class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }

  belongs_to :list
  belongs_to :movie
end
# validates :name, presence: true, uniqueness: { scope: :account_id }
