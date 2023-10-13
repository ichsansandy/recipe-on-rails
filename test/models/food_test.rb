require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    user = User.create(name: 'John', email: 'john@example.com', password: 'password123')
    food = Food.new(
      name: 'Apple',
      measurement_unit: 'Piece',
      price: 1.99,
      quantity: 10,
      user:
    )
    assert food.valid?
  end

  test 'should not be valid without a name' do
    food = Food.new(
      measurement_unit: 'Piece',
      price: 1.99,
      quantity: 10
    )
    assert_not food.valid?
  end

  test 'should not be valid with a short name' do
    food = Food.new(
      name: 'A',
      measurement_unit: 'Piece',
      price: 1.99,
      quantity: 10
    )
    assert_not food.valid?
  end

  test 'should not be valid with a long name' do
    food = Food.new(
      name: 'A' * 51,
      measurement_unit: 'Piece',
      price: 1.99,
      quantity: 10
    )
    assert_not food.valid?
  end

  test 'should not be valid without measurement_unit' do
    food = Food.new(
      name: 'Apple',
      price: 1.99,
      quantity: 10
    )
    assert_not food.valid?
  end

  test 'should not be valid without price' do
    food = Food.new(
      name: 'Apple',
      measurement_unit: 'Piece',
      quantity: 10
    )
    assert_not food.valid?
  end

  test 'should not be valid with negative price' do
    food = Food.new(
      name: 'Apple',
      measurement_unit: 'Piece',
      price: -1.99,
      quantity: 10
    )
    assert_not food.valid?
  end

  test 'should not be valid without quantity' do
    food = Food.new(
      name: 'Apple',
      measurement_unit: 'Piece',
      price: 1.99
    )
    assert_not food.valid?
  end

  test 'should not be valid with negative quantity' do
    food = Food.new(
      name: 'Apple',
      measurement_unit: 'Piece',
      price: 1.99,
      quantity: -10
    )
    assert_not food.valid?
  end

  test 'should generate name_with_measurement_unit correctly' do
    food = Food.new(name: 'Banana', measurement_unit: 'Piece')
    assert_equal 'Banana (Piece)', food.name_with_measurement_unit
  end
end
