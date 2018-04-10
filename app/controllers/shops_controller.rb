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
    if @shop.save
        redirect_to shop_path(@shop)
    else
        render 'new'
    end
  end
  def edit

  end
  def update
      if @shop.update(shop_params)
          redirect_to shop_path(@shop)
      else
          #binding.pry
          render 'edit'
      end
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
