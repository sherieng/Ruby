Rails.application.routes.draw do
  get '' => "users#main"

  post "create" => "users#create"

  get 'result'=> "users#show"
end
