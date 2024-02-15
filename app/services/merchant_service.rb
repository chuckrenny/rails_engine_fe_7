class MerchantService
  def conn
    Faraday.new(url: "http://localhost:3000")
  end
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def index
    get_url("/api/v1/merchants")
  end

  def all_items(id)
    get_url("/api/v1/merchants/#{id}/items")
  end
end