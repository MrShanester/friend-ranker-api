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

  # good_deeds routes
  get "good_deeds" => "good_deeds#index"
  get "good_deeds/:id" => "good_deeds#show"
  post "good_deeds" => "good_deeds#create"
  patch "good_deeds/:id" => "good_deeds#update"
  delete "good_deeds/:id" => "good_deeds#destroy"

  # bad_deeds routes
  get "bad_deeds" => "bad_deeds#index"
  get "bad_deeds/:id" => "bad_deeds#show"
  post "bad_deeds" => "bad_deeds#create"
  patch "bad_deeds/:id" => "bad_deeds#update"
  delete "bad_deeds/:id" => "bad_deeds#destroy"
end
