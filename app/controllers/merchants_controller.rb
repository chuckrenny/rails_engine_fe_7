class MerchantsController < ApplicationController
  # GET /merchants or /merchants.json
  def index
    @merchants = Merchant.all
  end

  # GET /merchants/1 or /merchants/1.json
  def show
    @merchant = Merchant.find(params[:id])
  end


  private
    # Only allow a list of trusted parameters through.
    def merchant_params
      params.require(:merchant).permit(:name)
    end
end
