Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"
  get "/users" => "users#index"

  post "/sessions" => "sessions#create"

  # friends routes
  get "friends" => "friends#index"
  get "friends/:id" => "friends#show"
  post "friends" => "friends#create"
  patch "friends/:id" => "friends#update"
  delete "friends/:id" => "friends#destroy"
end
