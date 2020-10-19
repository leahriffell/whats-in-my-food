class FoodFacade
  def self.search_for(ingredient)
    FoodService.by_ingredient(ingredient).map do |food_data|
      Food.new(food_data)
    end
  end
end