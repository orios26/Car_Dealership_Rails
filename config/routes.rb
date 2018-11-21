Rails.application.routes.draw do
  resources :employees
  devise_for :accounts, controllers: {
    sessions: 'accounts/sessions'
  }
  devise_for :users
  get 'admin' => 'admin#index'

  #setting the vehicles index page as the home page
  root 'vehicles#index', as: 'vehicles_index'

  resources :users
  resources :models
  resources :quotes
  resources :sales_people
  resources :managers
  resources :vehicles
  resources :customers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
