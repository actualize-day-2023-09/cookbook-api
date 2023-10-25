class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    recipe = Recipe.find_by(id: params["id"])
    render json: {
      id: recipe.id,
      title: recipe.title,
      chef: recipe.chef,
      prep_time: recipe.prep_time,
      image_url: recipe.image_url,
      ingredients: recipe.ingredients,
      directions: recipe.directions,
      created_at: recipe.created_at,
      updated_at: recipe.updated_at,
    }
  end
end
