class ShoppingListsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_foods = RecipeFood.where(recipe_id: params[:recipe_id])
    @food = Food.all
  end
end
