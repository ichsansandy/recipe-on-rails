class ShoppingListsController < ApplicationController
  def index
    recipe_id = params[:recipe_id]
    return unless recipe_id.present?

    @recipe = Recipe.find(recipe_id)

    @recipe_foods = @recipe.recipe_foods.where("quantity_needed > 0")
    @total_value = @recipe_foods.sum(&:total_price_need)
  end

  def generate
    recipe_id = params[:recipe_id]
    redirect_to shopping_lists_path(recipe_id:)
  end
end
