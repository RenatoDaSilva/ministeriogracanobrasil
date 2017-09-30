Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get  '/noticias', to: 'static_pages#noticias'
  get  '/biblioteca', to: 'static_pages#biblioteca'
  get  '/calendario', to: 'static_pages#calendario'
  get  '/contatos', to: 'static_pages#contatos'
  get  '/eventos', to: 'static_pages#eventos'
  get  '/araraquara', to: 'static_pages#araraquara'

  get  '/signup',  to: 'users#new'

  resources :users
end