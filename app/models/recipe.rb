class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods

  validates :name, presence: true, length: {minimun: 2, maximun: 50}, allow_blank: false
  validates :preparation_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :cooking_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :description, presence: true, allow_blank: false
  validates :public, inclusion: {in: [true, false] }

  def preparation_time_hours
    hours = preparation_time / 60
    hours.to_i
  end

  def preparation_time_minutes
    minutes = preparation_time % 60
    minutes.to_i 
  end

  def cooking_time_hours
    hours = cooking_time / 60
    hours.to_i
  end

  def cooking_time_minutes
    minutes = cooking_time % 60
    minutes.to_i
  end

  def total_time_hours
    total = preparation_time + cooking_time
    hours = total / 60
    hours.to_i
  end

  def total_time_minutes
    total = preparation_time + cooking_time
    minutes = total % 60
    minutes.to_i
  end
end
