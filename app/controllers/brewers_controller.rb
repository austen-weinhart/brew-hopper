class BrewersController < ApplicationController

	def index
    @brewers = Brewer.all
    @styles = Style.all
	end

  def show
    @brewer = Brewer.find(params[:id])
    @styles = Style.all
  end

  def new
    @brewer = Brewer.new
    @styles = Style.all
  end

  def create
    @brewer = Brewer.new(brewer_params)

    if @brewer.save
    redirect_to brewers_path
    else
    render :new
    end
  end

  def edit
    @brewer = Brewer.find(params[:id])
    @styles = Style.all
  end

  def update
    @brewer = Brewer.find(params[:id])
    if @brewer.update(brewer_params)
      redirect_to beers_path
    else
      render :edit
    end
  end

  def destroy
    @brewer = Brewer.find(params[:id])
    @brewer.destroy
    redirect_to brewers_path
  end

private
def brewer_params
  params.require(:brewer).permit(:brewery, :email, :address, :state, :zip_code, :image)
end

end
