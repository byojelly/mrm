class ItemsController < ApplicationController
#note, if an index is wanted make sure to add code specified in Routing and Nested Resources readme
  def show
    #binding.pry
    @item = Item.find_by(id: params[:id])
    if params[:shop_id]
        @shop = Shop.find_by(id: params[:shop_id])
    end
  end

end
