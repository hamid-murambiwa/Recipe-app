class Recipe < ApplicationRecord
    belongs_to :users
    has_many :recipe_foods
end
