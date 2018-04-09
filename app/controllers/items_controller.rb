class ItemsController < ApplicationController
#note, if an index is wanted make sure to add code specified in Routing and Nested Resources readme
  def show
    @item = Item.find_by(id: params[:id])
  end

end
