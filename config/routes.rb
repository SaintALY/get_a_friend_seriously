Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  resources :users, only: [:show]
  root to: 'offers#index'

  get '/offers', to: 'offers#index', as: :offers # in link to helper say offers_path
  get '/offers/:id', to: 'offers#show', as: :offer
  post '/offers/:offer_id/bookings', to: 'bookings#create', as: :offer_booking
  delete '/bookings/:id', to: 'bookings#destroy', as: :booking
  get '/offer/new', to: 'offers#new', as: :new_offer
  post '/offers', to: 'offers#create'
  get '/offers/:id', to: 'offers#edit', as: :update_offer
  patch '/offers/:id', to: 'offers#update'
  # USER Controller
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
