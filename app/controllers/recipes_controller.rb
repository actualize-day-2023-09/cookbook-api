class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    @recipe = Recipe.find_by(id: params["id"])
    render :show
  end

  def create
    @recipe = Recipe.new(
      title: params["title"],
      chef: params["chef"],
      image_url: params["image_url"],
      prep_time: params["prep_time"],
      ingredients: params["ingredients"],
      directions: params["directions"],
    )
    @recipe.save
    render :show
  end
end
