class ShoppingListsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_foods = RecipeFood.where(recipe_id: params[:recipe_id])
    @food = Food.all
    @total_price = 0
    @total_quantity = 0
    @recipe_foods.each do |recipe_food|
      @total_price += recipe_food.food.price * recipe_food.quantity
      @total_quantity += recipe_food.quantity
    end
  end
end
