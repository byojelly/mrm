class GenericpageController < ApplicationController
  #before_action :require_logged_in, except: [:index]
  def home
    #  @categories = Category.all
    #binding.pry
      @items = Item.available_and_new

  end
end