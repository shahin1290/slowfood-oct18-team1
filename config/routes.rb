Rails.application.routes.draw do
  mount Cartify::Engine, at: '/'
  devise_for :users 
  resources :dishes, only: [:index, :show]
  root controller: :dishes, action: :index
end
