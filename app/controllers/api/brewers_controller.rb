module API
	class BrewersController < ApplicationController
		protect_from_forgery with: :null_session


		def index
			render json: Brewer.all
		end

		def show
			render json: Brewer.find(params[:id])
		end

		def create
			brewer = Brewer.new(brewer_params)

			if brewer.save
				render json: brewer, status: 201, location: [:api, brewer]
			else
				render json: brewer.errors, status: 422
			end
		end

		private
		def brewer_params
			params.require(:brewer).permit(:brewery, :address, :zip_code, :website, :image_url)
		end
	end #end class

end #end module