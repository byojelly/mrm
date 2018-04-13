class ItemsController < ApplicationController
  before_action :set_item, only:[:show, :edit, :update]
  before_action :set_shop, only:[:new, :create, :update, :edit]
def show
  #binding.pry
end
def new
    @item=Item.new


    @tuneup = @item.tuneups.build
#binding.pry
    #@tuneup.build_technician(name: nil)
#binding.pry
    #@item.categories.build
end
def create
binding.pry
  @item = Item.new(item_params)

  if @item.save
    binding.pry

      redirect_to shop_item_path(@shop, @item)
  else
    binding.pry
      render 'new'
  end
end
def edit

end
def update
    if @item.update(item_params)
#binding.pry
        redirect_to shop_item_path(@shop, @item)
    else
        render 'edit'
    end
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
  params.require(:item).permit(:name, :year, :condition, :detail, :itemtype, :available, :quantity, :shop_id, tuneups_attributes: [:date, :technician_id])#, tuneups_attributes: [:"0"][:date, technician_attributes: [:id]]
end



end
