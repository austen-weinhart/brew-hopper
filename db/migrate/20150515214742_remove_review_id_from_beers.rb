class RemoveReviewIdFromBeers < ActiveRecord::Migration
  def change
      remove_column :beers, :review_id
  end
end
