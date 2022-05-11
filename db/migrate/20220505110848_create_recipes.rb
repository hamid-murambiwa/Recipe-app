class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :prep_time
      t.string :cook_time
      t.string :description
      t.boolean :public
      t.string :img

      t.timestamps
    end
  end
end
