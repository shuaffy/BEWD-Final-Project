class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.integer :artist_id
      t.string :title
      t.integer :museum_id
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
