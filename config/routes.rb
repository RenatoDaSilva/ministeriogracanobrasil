Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/noticias', to: 'static_pages#noticias'
  get  '/biblioteca', to: 'static_pages#biblioteca'
  get  '/contatos', to: 'static_pages#contatos'
  get  '/eventos', to: 'static_pages#eventos'
  get  '/ministerio', to: 'static_pages#ministerio'
end