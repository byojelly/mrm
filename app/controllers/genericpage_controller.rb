class GenericpageController < ApplicationController
  def home
    
      @items = Item.available_and_new
  end
end
