Rails.application.routes.draw do
  get 'posts' => "posts#index"
  post 'posts' => "posts#create"


  get 'users' => "users#index"
  post 'users' => "users#create"
end
