class AddBeerIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :beer_id, :integer
  end
end
