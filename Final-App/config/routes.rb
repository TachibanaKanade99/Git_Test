Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Resourceful

  # Admin
  namespace :admin do
  	resources :users, :photos, :albums, only: [:show, :edit, :update, :destroy]
  end

  # User
  resources :users do
    resources :albums
    resources :photos
    resources :likes
  end

  # Albums
  namespace :albums do
    resources :photos, only: [:edit, :update, :show, :destory]
  end

  # Non-resourceful
  root 'home#index'
  get 'home/index'
  get '/feed', to: 'home#feed'
  get 'exit', to: 'session#destroy', as: :logout
  get '/newest', to: 'home#show'

end