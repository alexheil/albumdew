class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.references :artist
      t.string :title
      t.text :description
      t.integer :month
      t.integer :day
      t.integer :year
      t.integer :price
      t.string :currency
      t.text :image_data
      t.string :slug

      t.timestamps
    end
  end
end
