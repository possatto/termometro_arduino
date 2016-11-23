Rails.application.routes.draw do
  resources :rooms
  resources :users
	get "/dashboard", to: 'dashboards#index'
end
