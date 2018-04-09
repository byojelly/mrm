Rails.application.routes.draw do
  #this provides us with all of the routes that devise gives us for users

  #github omniauth Add omniauth callbacks to config/routes.rb that will route to callbacks controller which will be created
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'genericpage#home', as: 'genericpage'
  resources :items, only: [:show]
  resources :shops, only: [:show, :new, :create, :edit, :update]

#  #omni auth facebook routing
#  get '/auth/facebook/callback' => 'sessions#create'
#  #

end
