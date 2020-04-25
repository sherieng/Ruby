Rails.application.routes.draw do
  get "users" => "users#index"

  get "users/new"

  get "users/total" => "users#total"

  get "users/:id" => "users#show"

  get "users/:id/edit" => "users#edit"

  post "create" => "users#create"

end
