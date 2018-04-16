Rails.application.routes.draw do
  #this provides us with all of the routes that devise gives us for users

  #github omniauth Add omniauth callbacks to config/routes.rb that will route to callbacks controller which will be created
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks", :registrations => "users/registrations"}


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'genericpage#home', as: 'genericpage'
  #resources :items, only: [:show, :new]
  resources :shops, only: [:show, :new, :create, :edit, :update] do
            #nested resources
            resources :items, only: [:show, :new, :create, :edit, :update]
  end
  #resources :categories, only: [:show]
  resources :contacts, only: [:show, :edit, :update]
  resources :tuneups, only: [:update]
  #get 'shops/:id/items/:item_id', to: 'shops#item'
#  #omni auth facebook routing
#  get '/auth/facebook/callback' => 'sessions#create'
#  #

end
