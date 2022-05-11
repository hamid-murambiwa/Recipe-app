class AddInstructionsToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :instructions, :string, array: true, default: []
  end
end
