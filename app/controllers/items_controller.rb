class ItemsController < ApplicationController
  before_action :set_item, only:[:show, :edit, :update, :item]
def show
  #binding.pry
end
def new
    @item=Item.new
end
def create
#binding.pry
  @item = Item.new(item_params)
  @item.save
  redirect_to item_path(@item)
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
def item_params
  params.require(:item).permit(:name, :detail, :user_id)
end



end
