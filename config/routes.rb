Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  devise_for :users 
  
  resources :dishes, only: [:index]
  root controller: :dishes, action: :index
end
