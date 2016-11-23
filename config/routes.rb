Rails.application.routes.draw do

  root to: 'dashboards#index', as: :root

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users
  resources :rooms
end
