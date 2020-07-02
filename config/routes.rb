Rails.application.routes.draw do
  resources "dashboard", only: [:index, :create]
  resources "users", only: [:index, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'dashboard', to: 'dasboard#index'
  
  root "users#index"
end
