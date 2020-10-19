class FoodFacade
  def self.search_for(ingredient)
    FoodService.by_ingredient(ingredient)[:foods].map do |food_data|
      FoodDetails.new(food_data)
    end
  end

  def self.num_result_for(ingredient)
    FoodService.by_ingredient(ingredient)[:totalHits]
  end
end