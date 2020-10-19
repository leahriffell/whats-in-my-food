class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_for(params[:q])
    @num_result = FoodFacade.num_result_for(params[:q ])
  end
end
