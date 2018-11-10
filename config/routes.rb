Rails.application.routes.draw do
  resources :models
  resources :quotes
  resources :sales_people
  resources :managers
  resources :vehicles
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
