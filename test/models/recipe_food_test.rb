require 'test_helper'

class RecipeFoodTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    recipe = Recipe.create(name: 'Delicious Dish', preparation_time: 60, cooking_time: 30,
                           description: 'A yummy recipe', public: true, user_id: 1)
    food = Food.create(name: 'Apple', measurement_unit: 'Piece', price: 1.99, quantity: 10, user_id: 1)
    recipe_food = RecipeFood.new(recipe:, food:, quantity: 5)
    assert recipe_food.valid?
  end

  test 'should not be valid without a quantity' do
    recipe = Recipe.create(name: 'Delicious Dish', preparation_time: 60, cooking_time: 30,
                           description: 'A yummy recipe', public: true, user_id: 1)
    food = Food.create(name: 'Apple', measurement_unit: 'Piece', price: 1.99, quantity: 10, user_id: 1)
    recipe_food = RecipeFood.new(recipe:, food:)
    assert_not recipe_food.valid?
  end

  test 'should not be valid with a negative quantity' do
    recipe = Recipe.create(name: 'Delicious Dish', preparation_time: 60, cooking_time: 30,
                           description: 'A yummy recipe', public: true, user_id: 1)
    food = Food.create(name: 'Apple', measurement_unit: 'Piece', price: 1.99, quantity: 10, user_id: 1)
    recipe_food = RecipeFood.new(recipe:, food:, quantity: -1)
    assert_not recipe_food.valid?
  end

  test 'should calculate total_price correctly' do
    recipe = Recipe.create(name: 'Delicious Dish', preparation_time: 60, cooking_time: 30,
                           description: 'A yummy recipe', public: true, user_id: 1)
    food = Food.create(name: 'Apple', measurement_unit: 'Piece', price: 1.99, quantity: 10, user_id: 1)
    recipe_food = RecipeFood.new(recipe:, food:, quantity: 5)
    assert_equal 9.95, recipe_food.total_price
  end
end
