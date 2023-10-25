Rails.application.routes.draw do
  post "/recipes" => "recipes#create"
  get "/recipes" => "recipes#index"
  get "/recipes/:id" => "recipes#show"
  patch "/recipes/:id" => "recipes#update"
  delete "recipes/:id" => "recipes#destroy"
end
