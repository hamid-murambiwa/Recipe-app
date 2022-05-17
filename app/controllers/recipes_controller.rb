class RecipesController < ApplicationController
  def index
    @category = RecipeCatogory.find(params[:recipe_catogory_id])
    @recipes = @category.recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_food = Recipe.where(recipe_id: params[:recipe_id])
  end

  def new
    @recipe = Recipe.new
    @foods = Food.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.save
      flash[:notice] = 'Recipe successfully created'
      redirect_to @recipe
    else
      flash[:notice] = 'Something went wrong'
      render 'new'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = 'The recipe was successfully destroyed.'
    redirect_to recipes_url
  end

  def public
    @public_recipes = Recipe.where(public: true)
    @public_recipe = Recipe.new
    @categories = RecipeCatogory.all
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(public: params[:public])
      flash[:success] = 'Recipe was successfully updated'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to recipe_catogory_recipe_path(@recipe, id: @recipe.id)
  end

  def own
    @recipes = Recipe.all
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cook_time, :prep_time, :description, :public)
  end
end
