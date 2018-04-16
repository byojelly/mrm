class ShopsController < ApplicationController
    before_action :set_shop, only:[:show, :edit, :update, :item]
  def show
  end
  def new
      @shop=Shop.new
  end
  def create
    @shop = Shop.new(shop_params)
    if @shop.save
        redirect_to shop_path(@shop)
    else
        render 'new'
    end
  end
  def edit
    require_logged_in #located in application controller
  end
  def update
      if @shop.update(shop_params)
          redirect_to shop_path(@shop)
      else
          render 'edit'
      end
  end
  private
  def set_shop
    @shop = Shop.find_by(id: params[:id])
  end
  def shop_params
    params.require(:shop).permit(:name, :detail, :user_id)
  end

end
