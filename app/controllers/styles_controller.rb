class StylesController < ApplicationController
  # before_action :require_login
   def new
      @style = style.new
    end # end of new method

    def create
      @style = Style.new(style_params)
      if @style.save
        redirect_to style_path(@style)
      else
        render :new # :new refers to the view template
      end
    end # end of create method

  def show
    @style = Style.find(params[:id])
    @styles = Style.all
  end # end of show method

  def index
    @styles = Style.all
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
    @style = Beer.find(params[:id])
    @style.destroy
    redirect_to(:back)
  end # end of destroy method

  # private
    # def require_login
    #   unless logged_in?
    #     flash[:error] = "You must be logged in to access that page."
    #     redirect_to login_path
    #   end
    # end # end of require_login method

    # def style_params
    #   params.require(:style).permit(:name, :description)
    # end  # end of style_params method
end # end of Styles Controller

