Rails.application.routes.draw do
  post "/recipes" => "recipes#create"
  get "/recipes" => "recipes#index"
  get "/recipes/:id" => "recipes#show"
end
