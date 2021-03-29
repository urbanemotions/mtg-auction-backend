Rails.application.routes.draw do
  resources :auctionbids
  resources :mtgcards
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
