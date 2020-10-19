require 'rails_helper'

RSpec.describe FoodService do
  it 'can fetch foods that match a certain ingredient search' do
    results = FoodService.by_ingredient('sweet potatoes')

    expect(results).to be_a(Hash)

    expect(results).to have_key :totalHits
    expect(results[:totalHits]).to be_an(Integer)
    
    expect(results).to have_key :foods

    first_food = results[:foods].first

    expect(first_food).to have_key :gtinUpc
    expect(first_food[:gtinUpc]).to be_a(String)

    expect(first_food).to have_key :description
    expect(first_food[:description]).to be_a(String)

    expect(first_food).to have_key :brandOwner
    expect(first_food[:brandOwner]).to be_a(String)

    expect(first_food).to have_key :ingredients
    expect(first_food[:ingredients]).to be_a(String)
  end
end