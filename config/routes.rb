Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/recipes" => "recipes#index" #RESTful conventions
  # get "/one_recipe", controller: "recipes", action: "one_recipe"
  get "/recipes/:id" => "recipes#show"
end
