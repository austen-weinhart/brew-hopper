class BeersController < ApplicationController
  # before_action :require_login
   def new
      @beer = beer.new
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
  end # end of show method

  def index
    @beers = Beer.all
  end # end of index method

  # def edit
  #   @aquarium = Aquarium.find(params[:id])
  #  end # end of edit method

  #  def update
  #   @aquarium = Aquarium.find(params[:id])

  #   if @aquarium.update_attributes(aquarium_params)
  #     redirect_to aquaria_path
  #   else
  #     render :edit
  #   end
  #  end # end of update method

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy
    redirect_to(:back)
  end # end of destroy method

  # private
    # def require_login
    #   unless logged_in?
    #     flash[:error] = "You must be logged in to access that page."
    #     redirect_to login_path
    #   end
    # end # end of require_login method

    # def beer_params
    #   params.require(:beer).permit(:name, :description)
    # end  # end of beer_params method
end # end of Beers Controller
