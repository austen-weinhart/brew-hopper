class AddReviewsToBeer < ActiveRecord::Migration
  def change
  	add_reference :beers, :review, index: true, foreign_key: true
  end
end
