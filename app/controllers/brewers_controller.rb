class BrewersController < ApplicationController

	def index
    @brewers = Brewers.all
	end

  def show
    @brewer = Brewer.find(params[:id])
  end

end
