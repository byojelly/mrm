class ItemsController < ApplicationController
  before_action :set_item, only:[:show, :edit, :update, :item]
  before_action :set_shop, only:[:new]
def show
  #binding.pry
end
def new
    @item=Item.new
end
def create
#binding.pry
  @item = Item.new(item_params)
  @shop = Shop.find_by(id: params[:item][:shop_id])
  if @item.save
      redirect_to shop_item_path(@shop, @item)
  else
      render 'new'
  end
end
def edit

end
def update
    @item.update(item_params)
    redirect_to item_path(@item)
end



private
def set_item
  #binding.pry
  @item = Item.find_by(id: params[:id])
end
def set_shop
  @shop = Shop.find_by(id: params[:shop_id])
end

def item_params
  params.require(:item).permit(:name, :year, :condition, :detail, :itemtype, :available, :quantity, :shop_id)
end



end
