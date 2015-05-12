module API
  class BeersController < ApplicationController
    protect_from_forgery with: :null_session

    def index
      render json: Beer.all
    end

    def show
      render json: Beer.find(params[:id])
    end

    def create
         beer = Beer.new(beer_params)

          if beer.save
           render json: beer, status: 201, location: [:api, beer]
          else
            render json: beer.errors, status: 422 # status 422 is an unprocessable entity
          end
         end
       end # end of create method

       private
       def beer_params
         params.require(:beer).permit(:name, :image_url, :abv, :availability, :description,      :food_pairings, :glassware, :serving_temp, :review_id, :brewer_id, :style_id)
       end # end of beer_params method
  end # end of BeersController class