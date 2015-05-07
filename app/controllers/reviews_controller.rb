class ReviewsController < ApplicationController

	def create
    @beer = beer.find(params[:id])
    @review = @beer.reviews.new(params.require(:review).permit(:description))
    @review.user_id = current_user.id
    @review.save
    redirect_to post_path(@beer)
  end

  def destroy
    @review = review.find(params[:id])
    @beer = @review.beer
    if current_user.id == @review.user_id
      @review.destroy
    	redirect_to beer_path(@beer)
    else
      redirect_to beer_path(@beer)
    end
  end

end
