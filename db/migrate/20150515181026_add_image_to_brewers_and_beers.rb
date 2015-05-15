class AddImageToBrewersAndBeers < ActiveRecord::Migration
 
  def self.up
    add_attachment :brewers, :image
    add_attachment :beers, :image
  end

  def self.down
    remove_attachment :brewers, :image
    remove_attachment :beers, :image
  end

end
