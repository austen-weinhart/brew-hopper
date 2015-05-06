class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :image_url
      t.string :style
      t.string :brewer
      t.float :abv
      t.string :availability
      t.text :description
      t.text :food_pairings
      t.string :glassware
      t.integer :serving_temp

      t.timestamps null: false
    end
  end
end
