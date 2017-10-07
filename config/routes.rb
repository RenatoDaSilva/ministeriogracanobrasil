Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get '/noticias', to: 'static_pages#noticias'
  get '/biblioteca', to: 'static_pages#biblioteca'
  get '/calendario', to: 'static_pages#calendario'
  get '/contatos', to: 'static_pages#contatos'
  get '/eventos', to: 'static_pages#eventos'
  get '/araraquara', to: 'static_pages#araraquara'

  get '/inscrever', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end