class FoodDetails
  attr_reader :gtin_upc_code, :description, :brand_owner, :ingredients

  def initialize(attr)
    @gtin_upc_code = attr[:gtinUpc]
    @description = attr[:description]
    @brand_owner = attr[:brandOwner]
    @ingredients = attr[:ingredients]
  end
end