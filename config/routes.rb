Rails.application.routes.draw do

  root to: 'dashboards#index', as: :root

  get '/login',  to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  post '/api', to: 'apis#insert', as: :insert_api

  resources :users
  resources :rooms
end
