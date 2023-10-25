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
      title: "Mud Pie",
      chef: "Peter Jang",
      image_url: "image.png",
      prep_time: 10,
      ingredients: "mud",
      directions: "bake the mud. Enjoy!",
    )
    @recipe.save
    render :show
  end
end
