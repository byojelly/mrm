Rails.application.routes.draw do
  #this provides us with all of the routes that devise gives us for users
  #github omniauth Add omniauth callbacks to config/routes.rb that will route to callbacks controller which will be created
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks", :registrations => "users/registrations"} #registrations allows me to hack into when a user is created so that a COntact can be created at the same time
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'genericpage#home', as: 'genericpage'
  #resources :items, only: [:show, :new]
  resources :shops, only: [:show, :new, :create, :edit, :update] do
            #nested resources
            resources :items, only: [:show, :new, :create, :edit, :update]
  end
  resources :contacts, only: [:show, :edit, :update]
  resources :tuneups, only: [:update]
end
