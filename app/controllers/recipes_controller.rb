class RecipesController < ApplicationController
  def index
    pp current_user
    @recipes = Recipe.all
    render :index
  end

  def show
    @recipe = Recipe.find_by(id: params["id"])
    render :show
  end

  def create
    @recipe = Recipe.new(
      user_id: current_user.id,
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

  def update
    @recipe = Recipe.find_by(id: params["id"])
    @recipe.update(
      title: params["title"] || @recipe.title,
      chef: params["chef"] || @recipe.chef,
      image_url: params["image_url"] || @recipe.image_url,
      prep_time: params["prep_time"] || @recipe.prep_time,
      ingredients: params["ingredients"] || @recipe.ingredients,
      directions: params["directions"] || @recipe.directions,
    )
    render :show
  end

  def destroy
    recipe = Recipe.find_by(id: params["id"])
    recipe.destroy
    render json: { message: "Recipe successfully deleted" }
  end
end
