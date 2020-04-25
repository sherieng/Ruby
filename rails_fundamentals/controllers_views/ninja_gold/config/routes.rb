Rails.application.routes.draw do
  get '' => "rpg#index"

  post 'process' => "rpg#process_money"

  post 'reset' => "rpg#reset"
end
