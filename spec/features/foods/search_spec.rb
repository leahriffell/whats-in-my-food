require 'rails_helper'

RSpec.describe 'Food Search Results' do
  it 'when I search for an ingredient in search input, I see results for food containing that ingredient' do
    visit root_path

    fill_in :q, :with => 'sweet potatoes'

    click_button('Search')

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Search results: 38680')
    expect(page).to have_css('.food', count: 10)
    within('#food-070560951975') do
      expect(page).to have_content('Brand owner: The Pictsweet Company')
      expect(page).to have_content('Description: SWEET POTATOES')
      expect(page).to have_content('GTIN/UPC code: 070560951975')
      expect(page).to have_content('Ingredients: SWEET POTATOES.')
    end
  end
end
