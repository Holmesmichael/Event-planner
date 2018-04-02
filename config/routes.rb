Rails.application.routes.draw do
  devise_for :models
  root 'static_pages#home'
  get  '/about',  to: 'static_pages#about'
  get  '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :events
  resources :users
end
