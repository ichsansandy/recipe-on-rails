class ShoppingListsController < ApplicationController
  def index
    recipe_id = params[:recipe_id]
    if recipe_id.present?
      @recipe = Recipe.find(recipe_id)

      @recipe_foods = @recipe.recipe_foods
      @total_value = @recipe_foods.sum(&:total_price)
    end
    # @recipe_foods = RecipeFood.all
    # @total_value = @recipe_foods.sum(&:total_price)
  end

  def generate
    recipe_id = params[:recipe_id]

    redirect_to shopping_lists_path(recipe_id: recipe_id) 
  end
end
