Rails.application.routes.draw do

  # get '/', to: 'users#create', as: 'signup'
  # get '/', to: 'users#login', as: 'login'
  # get '/logout', to: 'log_in#logout', as: 'logout'
  resources :auctionbids
  resources :mtgcards
  resources :users 
  # get '/', to: 'users#create', as: 'signup'
  # get '/', to: 'users#login', as: 'login'
  # resources :login, only: [:create]
  post "/signup", to: "users#create"
  post "/login", to: "users#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
