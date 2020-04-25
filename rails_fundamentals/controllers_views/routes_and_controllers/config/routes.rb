Rails.application.routes.draw do
  get "hello" => "hello#hello"
  get "say/hello" => "hello#say"
  get "say/hello/:name" => "hello#show"
  get "" => "hello#index"
  get "times" => "hello#times"
  get "times/restart" => "hello#destroy"
end
