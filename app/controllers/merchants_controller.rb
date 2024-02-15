class MerchantsController < ApplicationController
  # GET /merchants or /merchants.json
  def index
    @merchants = MerchantFacade.new.merchant_index
  end

  # GET /merchants/1 or /merchants/1.json
  def show
    @items = MerchantFacade.new.merchant_items(params[:id])
  end
end
