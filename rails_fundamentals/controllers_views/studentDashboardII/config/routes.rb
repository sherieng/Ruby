Rails.application.routes.draw do
  resources :dojos do
    resources :students 
  end
  # get 'dojos' => "dojos#index"

  # post 'dojos' => "dojos#create"

  # get 'dojos/new'

  # get 'dojos/:id/edit' => "dojos#edit"

  # delete 'dojos/:id' => "dojos#destroy"

  # get 'dojos/:id' => "dojos#show"

  # patch 'dojos/:id' => 'dojos#update'

end
