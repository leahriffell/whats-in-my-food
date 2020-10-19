class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_for(params[:q])
  end
end
