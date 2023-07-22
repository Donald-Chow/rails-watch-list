class CreateWl1190Bookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :wl1190_bookmarks do |t|
      t.string :comment
      t.references :wl1190_movie, null: false, foreign_key: true
      t.references :wl1190_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
