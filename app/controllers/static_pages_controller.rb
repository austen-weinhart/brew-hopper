class StaticPagesController < ApplicationController
  def home
    @styles = Style.all
  end
end
