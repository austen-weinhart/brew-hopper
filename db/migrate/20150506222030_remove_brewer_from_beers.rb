class RemoveBrewerFromBeers < ActiveRecord::Migration
  def change
    remove_column :beers, :brewer, :string
  end
end
