Rails.application.routes.draw do
  get "/bienvenida", to: "home#index";

  root to:"home#index"
  get "users/new", to: "users#new" , as: :new_users
  get "users/:id", to: "users#show"
  get "users/:id/edit", to: "users#edit"
  get "users", to: "users#index"
  patch "/users/:id", to: "users#update", as: :user
  post "users", to: "users#create"

end
