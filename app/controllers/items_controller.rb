class ItemsController < ApplicationController
  before_action :set_item, only:[:show, :edit, :update]
  before_action :set_shop, only:[:new, :create, :update, :edit]
    def show
    end
    def new
        @item=Item.new
        @tuneup = @item.tuneups.build
    end
    def create
      @item = Item.new(item_params)
      if @item.save
          redirect_to shop_item_path(@shop, @item)
      else
            render 'new'
      end
    end
    def edit
    end
    def update
        if @item.update(item_params)
            redirect_to shop_item_path(@shop, @item)
        else
            render 'edit'
        end
    end
private
    def set_item
      @item = Item.find_by(id: params[:id])
    end
    def set_shop
      @shop = Shop.find_by(id: params[:shop_id])
    end

    def item_params
              #this if statement allows:
              # the first part checks to see if the tuneups form exist. this allows the edit form to work when a tuneup does not exits
              #process if the user does not add tunep information to the form (leaving it blank)
              if !params[:item].include?("tuneups_attributes") ||
(params[:item][:tuneups_attributes][:"0"][:date].empty? && params[:item][:tuneups_attributes][:"0"][:technician_id].empty?)
                    params.require(:item).permit(:name, :year, :condition, :detail, :itemtype, :available, :quantity, :shop_id)
              else
                #binding.pry
                    params.require(:item).permit(:name, :year, :condition, :detail, :itemtype, :available, :quantity, :shop_id, tuneups_attributes: [:date, :technician_id])#, tuneups_attributes: [:"0"][:date, technician_attributes: [:id]]
              end
    end
end
