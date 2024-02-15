# require_relative '../poros/merchant'

class MerchantFacade

  def merchant_index
    service = MerchantService.new
    json = service.index

    @merchants = json[:data].map do |merchant_data|
      
      MerchantPoro.new(merchant_data)
    end
  end

  def merchant_items(id)
    service = MerchantService.new
    json = service.all_items(id)

    @merchant_items = json[:data].map do |item_data|
      ItemPoro.new(item_data)
    end
  end
end