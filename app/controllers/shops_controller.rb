class ShopsController < ApplicationController
    before_action :set_shop, only:[:show]
  def show
  end
  def new
      @shop=Shop.new
  end



  private
  def set_shop
    @shop = Shop.find_by(id: params[:id])
  end
  def shop_params
    params.require(:shop).permit(:name, :detail)
  end

end
