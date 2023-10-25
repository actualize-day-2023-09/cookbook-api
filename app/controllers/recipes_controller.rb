class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    recipe = Recipe.find_by(id: params["id"])
    render json: {
      id: recipe.id,
      chef: recipe.chef,
      ingredients: recipe.ingredients,
      directions: recipe.directions,
      prep_time: recipe.prep_time,
    }
  end
end
