Rails.application.routes.draw do
  mount Cartify::Engine, at: '/'
  devise_for :users 
  resources :dishes
  resources :restaurant, only: :index
  resources :moesbio, only: :index
  root controller: :dishes, action: :index
end
