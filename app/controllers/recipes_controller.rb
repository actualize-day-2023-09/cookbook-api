class RecipesController < ApplicationController
  def one_recipe
    recipe = Recipe.second
    render json: {
      id: recipe.id,
      chef: recipe.chef,
      ingredients: recipe.ingredients,
      directions: recipe.directions,
      prep_time: recipe.prep_time,
    }
  end
end
