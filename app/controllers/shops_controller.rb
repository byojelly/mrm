class ShopsController < ApplicationController
    before_action :set_shop, only:[:show, :edit, :update]
  def show
  end
  def new
      @shop=Shop.new
  end
  def create
    @shop = Shop.new(shop_params)
    @shop.save
    redirect_to shop_path(@shop)
  end
  def edit

  end
  def update
      @shop.update(shop_params)
      redirect_to shop_path(@shop)
  end



  private
  def set_shop
    @shop = Shop.find_by(id: params[:id])
  end
  def shop_params
    params.require(:shop).permit(:name, :detail)
  end

end
