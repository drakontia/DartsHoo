Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :users
  resources :games
  resources :reg01s
  resources :regcrickets
  resources :rounds
end
