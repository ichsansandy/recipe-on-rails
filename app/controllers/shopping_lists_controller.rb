class ShoppingListsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.all
    @total_value = @recipe_foods.sum(&:total_price)
  end
end
