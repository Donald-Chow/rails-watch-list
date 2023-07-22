class List < ApplicationRecord
  self.table_name = 'wl1190_lists'
  # self.primary_key = "wl1190_list_id"
  validates :name, presence: true, uniqueness: true

  has_many :bookmarks, dependent: :destroy, foreign_key: 'wl1190_list_id'
  has_many :movies, through: :bookmarks, foreign_key: 'wl1190_list_id'
  has_one_attached :photo
end
