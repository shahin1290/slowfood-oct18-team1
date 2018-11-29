Rails.application.routes.draw do
  mount Cartify::Engine, at: '/'
  devise_for :users 
  resources :dishes
  root controller: :dishes, action: :index
end
