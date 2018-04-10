class ShopsController < ApplicationController
    before_action :set_shop, only:[:show, :edit, :update, :item]
  def show
    #binding.pry
  end
  def new
      @shop=Shop.new
  end
  def create
#binding.pry
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
    #binding.pry
    @shop = Shop.find_by(id: params[:id])
  end
  def shop_params
    params.require(:shop).permit(:name, :detail, :user_id)
  end

end
