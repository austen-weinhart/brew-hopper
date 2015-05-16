class BeersController < ApplicationController


  # before_action :require_login
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def new
    @beer = Beer.new
    @brewers = Brewer.all
    @users = User.all
  end # end of new method

  def create
    @beer = Beer.new(beer_params)
    @beer.user = current_user

    if @beer.save
      redirect_to beer_path(@beer)
    else
      render :new # :new refers to the view template
    end
  end # end of create method

  def show
    @beer = Beer.find(params[:id])
    @review = Review.new
  end # end of show method

  def index

    if params[:style].blank?
      @beers = Beer.all.order("created_at DESC")
      @style_name = "All Beer"
      # render "_recommended"

    else
      @style_id = Style.find_by(name: params[:style]).id
      @style_name = style.find_by(name: params[:style]).name
      @beers = Beer.where(style_id: @style_id).order("created_at DESC")
    end
  end# end of index method

  def edit
    @beer = Beer.find(params[:id])
  end # end of edit method

  def update
    @beer = Beer.find(params[:id])

    if @beer.update_attributes(beer_params)
      redirect_to beers_path
    else
      render :edit
    end
  end # end of update method

  def destroy
    # @beer = Beer.find(params[:id])
    @beer.destroy
    redirect_to beers_path
  end # end of destroy method

  private
  # def require_login
  #   unless logged_in?
  #     flash[:error] = "You must be logged in to access that page."
  #     redirect_to login_path
  #   end
  # end # end of require_login method

  def beer_params
    params.require(:beer).permit(:name, :image)
  end  # end of beer_params method

  def set_item
    @beer = Beer.find(params[:id])
  end
end # end of Beers Controller
