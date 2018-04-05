Rails.application.routes.draw do
  #this provides us with all of the routes that devise gives us for users
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'genericpage#home', as: 'genericpage'
  resources :items, only: [:show]
  resources :shops, only: [:show]

  #

end
