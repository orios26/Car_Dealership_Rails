Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get 'finance/index'
  get 'finance/show'
  get 'summary/index'
  get 'report/index'
  get 'sales_report/index'
  resources :employees
  # devise_for :accounts, controllers: {
  #   sessions: 'accounts/sessions'
  # }

  #setting the vehicles index page as the home page
  root 'vehicles#index', as: 'vehicles_index'

  resources :quotes do
    member do
      get 'calculations'
      end
    end
  resources :vehicles do
    member do
      get 'price'
    end
  end
  resources :customers

  get 'summary', to: 'summary#index'
  get 'reports', to: 'report#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
