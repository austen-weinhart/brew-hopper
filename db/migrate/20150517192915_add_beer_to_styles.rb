class AddBeerToStyles < ActiveRecord::Migration
  def change
  	add_reference :styles, :beer, index: true, foreign_key: true
  end
end
