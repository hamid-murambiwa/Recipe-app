class AddRecipeCatogoriesRefToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes, :recipe_catogory, null: false, foreign_key: true
  end
end
