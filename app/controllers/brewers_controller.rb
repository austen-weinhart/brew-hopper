class BrewersController < ApplicationController

	def index
    @brewers = Brewer.all
	end

  def show
    @brewer = Brewer.find(params[:id])
  end

  def new
    @brewer = Brewer.new
  end

  def create
    @brewer = Brewer.new(brewer_params)

    if @brewer.save
    redirect_to brewers_path
    else
    render :new
    end
  end

private
def brewer_params
  params.require(:brewer).permit(:brewery, :email, :address, :state, :zip_code)
end

end
