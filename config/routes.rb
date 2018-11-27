Rails.application.routes.draw do
  resources :dishes, only: [:index]
  root controller: :dishes, action: :index
end
