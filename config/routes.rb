Rails.application.routes.draw do

  # user routes
  get "/signup", to: "users#new"
  get "/profile", to: "users#show"
  resources :users, only: [:create]

  #sessions routes
  get "/login", to: "sessions#new"
  get "/login", to: "sessions#new"
  resources :sessions, only: [:create]

  root "users#show"


end
