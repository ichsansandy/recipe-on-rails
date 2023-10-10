require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    user = User.create(name: 'John', email: 'john@example.com', password: 'password123')
    recipe = Recipe.new(
      name: 'Delicious Dish',
      preparation_time: 60,
      cooking_time: 30,
      description: 'A yummy recipe',
      public: true,
      user:
    )
    assert recipe.valid?
  end

  test 'should not be valid without a name' do
    recipe = Recipe.new(
      preparation_time: 60,
      cooking_time: 30,
      description: 'A yummy recipe',
      public: true
    )
    assert_not recipe.valid?
  end

  test 'should not be valid with a short name' do
    recipe = Recipe.new(
      name: 'A',
      preparation_time: 60,
      cooking_time: 30,
      description: 'A yummy recipe',
      public: true
    )
    assert_not recipe.valid?
  end

  test 'should not be valid with a long name' do
    recipe = Recipe.new(
      name: 'A' * 51,
      preparation_time: 60,
      cooking_time: 30,
      description: 'A yummy recipe',
      public: true
    )
    assert_not recipe.valid?
  end

  test 'should not be valid without preparation_time' do
    recipe = Recipe.new(
      name: 'Delicious Dish',
      cooking_time: 30,
      description: 'A yummy recipe',
      public: true
    )
    assert_not recipe.valid?
  end

  test 'should not be valid with non-integer preparation_time' do
    recipe = Recipe.new(
      name: 'Delicious Dish',
      preparation_time: 'not_an_integer',
      cooking_time: 30,
      description: 'A yummy recipe',
      public: true
    )
    assert_not recipe.valid?
  end

  test 'should calculate preparation_time_hours correctly' do
    recipe = Recipe.new(preparation_time: 90)
    assert_equal 1, recipe.preparation_time_hours
  end

  test 'should calculate preparation_time_minutes correctly' do
    recipe = Recipe.new(preparation_time: 90)
    assert_equal 30, recipe.preparation_time_minutes
  end
end
