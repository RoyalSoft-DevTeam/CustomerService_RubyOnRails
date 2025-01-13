Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Updated by smile on Jan 13, 2025
  get "/users", to: "users#index"
  get "/users/new", to: "users#new"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"
  get "/users/:id/edit", to: "users#edit"
  patch "/users/:id", to: "users#update"
  put "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  resources :products
  root "users#index"

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "users#index"
end
