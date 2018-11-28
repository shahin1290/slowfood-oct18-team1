Rails.application.routes.draw do
  resources :dishes, only: [:show]
  mount Cartify::Engine, at: '/'
  devise_for :users 
  resources :dishes, only: [:index]
  root controller: :dishes, action: :index
end
