class FoodService
  def self.by_ingredient(ingredient)
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods/search?query=#{URI.encode(ingredient)}&pageNumber=1&pageSize=10") do |faraday|
      faraday.headers["X-Api-Key"] = ENV['FOODS_API_KEY']
    end
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  # def self.conn
  #   Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods") do |faraday|
  #     faraday.headers["X-Api-Key"] = ENV['FOODS_API_KEY']
  #   end
  # end
end
