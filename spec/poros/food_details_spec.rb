require 'rails_helper'

RSpec.describe FoodDetails do
  it 'exists' do
    attr = {
      gtin_upc_code: '123',
      description: 'yummy',
      brand_owner: 'Farmer Joe',
      ingredients: 'Jolly Ranchers'
    }

    # food = FoodDetails.new(gtin_upc_code: 123, description: 'yummy', brand_owner: 'Farmer Joe', ingredients: 'Jolly Ranchers')
    
    food = FoodDetails.new(attr)

    expect(food).to be_a(FoodDetails)
    expect(food.gtin_upc_code).to eq(123)
    expect(food.description).to eq('yummy')
    expect(food.brand_owner).to eq('Farmer Joe')
    expect(food.ingredients).to eq('Jolly Ranchers')
  end
end