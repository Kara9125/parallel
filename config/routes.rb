Rails.application.routes.draw do

  # user routes
  get "/signup", to: "users#new"
  get "/profile", to: "users#show"
  resources :users, only: [:create]

  #sessions routes
  get "/login", to: "sessions#new"
  get "/login", to: "sessions#new"
  resources :sessions, only: [:create]

  #interests routes
  get "/interests", to: "users#interests", as: "interests"

  #review routes
  get "/review", to: "users#review", as: "review"


  root "users#index"


end


# signup GET  /signup(.:format)   users#new
#  profile GET  /profile(.:format)  users#show
#    users POST /users(.:format)    users#create
#    login GET  /login(.:format)    sessions#new
#          GET  /login(.:format)    sessions#new
# sessions POST /sessions(.:format) sessions#create
#     root GET  /                   users#index