Rails.application.routes.draw do


  resources :replies
  resources :emoticons
  resources :follows
  get '/followers', to: "follows#followers"
  get '/followees', to: "follows#followees"
  
  resources :users
  # get '/profile_page/:id', to: 'users#foreign_show', as: 'profile'

  root "application#hello"
  get '/foregin_show/:id', to: "users#foreign_show", as: 'foreign'
  get '/signup', to: 'users#new'
  post '/create', to: 'application#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'


#   get '/profile', to: 'users#show'

  # get '/feed', to: 'users#show'

#   get '/feed', to: 'users#show'
  get '/trending', to: 'hashtags#index'

  get '/settings', to: 'application#settings'


  resources :hashtags, only: [:show, :new, :create, :edit, :update, :destroy]

  resources :comments
  resources :posts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
