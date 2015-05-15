class ReviewsController < ApplicationController

	def create
    if logged_in?
      @beer = Beer.find(params[:id])
      @review = @beer.reviews.new(params.require(:review).permit(:description))
      @review.user_id = current_user.id
      @review.save
      redirect_to beer_path(@beer)
    else
      redirect_to login_path
    end
  end

  # def create
  #   @movie = Movie.find(params[:id])
  #   @review = Review.new(params.require(:review).permit(:body, :score))
  #   @review.movie = @movie 
  # end

  def destroy
    @review = Review.find(params[:id])
    @beer = @review.beer
    if current_user.id == @review.user_id
      @review.destroy
    	redirect_to beer_path(@beer)
    else
      redirect_to beer_path(@beer)
    end
  end

end
