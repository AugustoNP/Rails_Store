Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # This one line creates index, show, new, create, edit, update, and destroy routes
  resources :products

  # Defines the root path route ("/")
  root "products#index"
end