Rails.application.routes.draw do
	get "/dashboard", to: 'dashboards#index'

  resources :users
end
