Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/about',  to: 'static_pages#about'
  get  '/signup', to: 'users#new'
  get  '/login',  to: 'sessions#new'
  get  '/events',  to: 'events#index'
  post '/login',  to: 'sessions#create'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'

  resources :events      
  resources :users
  resources :account_activations, only: [:edit]
end
