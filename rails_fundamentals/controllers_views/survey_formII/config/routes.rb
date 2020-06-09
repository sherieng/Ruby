Rails.application.routes.draw do
  get '' => 'surveys#index'

  post "" => 'surveys#create'

  get 'result' => 'surveys#show'

end
