Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  #setting the vehicles index page as the home page
  root 'vehicles#index', as: 'vehicles_index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :models
  resources :quotes
  resources :sales_people
  resources :managers
  resources :vehicles
  resources :customers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
