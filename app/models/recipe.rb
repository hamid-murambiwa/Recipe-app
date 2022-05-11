class Recipe < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :recipe_catogory, class_name: 'RecipeCatogory'
  has_many :recipe_foods, dependent: :destroy

  def food_arr(recipe)
    food_arr = []
    recipe_foods = RecipeFood.where(recipe_id: recipe)
    recipe_foods.each do |recipe_food|
      Food.where(id: recipe_food.food_id).each do |food|
        food_arr.push(food)
      end
    end
    food_arr
  end

  def total_food_price(food_arr, _recipe_id)
    total = 0
    food_arr.each do |food|
      RecipeFood.where(food_id: food.id).each do |recipe_food|
        @food_price_each = food.price * recipe_food.quantity
      end
      total += @food_price_each
    end
    total
  end

  def total_food_counts(food_arr, _recipe_id)
    total = 0
    food_arr.each do |food|
      RecipeFood.where(food_id: food.id).each do |recipe_food|
        @food_count_each = recipe_food.quantity
      end
      total += @food_count_each
    end
    total
  end
end
