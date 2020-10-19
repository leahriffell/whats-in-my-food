require 'rails_helper'

RSpec.describe FoodFacade do
  it 'can return list of foods that have a specific ingredient' do
    foods = FoodFacade.search_for('sweet potatoes')

    expect(foods).to be_an(Array)

    first_food = foods.first
    expect(first_food).to be_a(FoodDetails)
    expect(first_food.gtin_upc_code).to be_a(String)
    expect(first_food.description).to be_a(String)
    expect(first_food.brand_owner).to be_a(String)
    expect(first_food.ingredients).to be_a(String)
  end

  it 'can return number of search results for a specific ingredient' do
    expect(FoodFacade.num_result_for('sweet potatoes')).to eq(38680)
  end
end