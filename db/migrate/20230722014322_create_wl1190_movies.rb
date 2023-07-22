class CreateWl1190Movies < ActiveRecord::Migration[7.0]
  def change
    create_table :wl1190_movies do |t|
      t.string :title
      t.text :overview
      t.string :posterurl
      t.float :rating

      t.timestamps
    end
  end
end
