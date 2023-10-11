class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  validates :name, presence: true, length: { minimun: 2, maximun: 50 }, allow_blank: false
  validates :measurement_unit, presence: true, allow_blank: false
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }

  def name_with_measurement_unit
    "#{name} (#{measurement_unit})"
  end

  def to_buy
    recipe_foods.reduce(-quantity) do |sum, recipe_food|
      sum + recipe_food.quantity
    end

    # if food.quantity > food.recipe_foods.quantity
    #   sum = food.quantity - recipe_foods.quantity
    # end
  end
end
