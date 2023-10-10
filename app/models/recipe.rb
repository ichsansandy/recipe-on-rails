class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods

  validate :at_least_one_time_field_filled
  validates :name, presence: true, length: { minimun: 2, maximun: 50 }, allow_blank: false
  validates :preparation_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :cooking_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :description, presence: true, allow_blank: false
  validates :public, inclusion: { in: [true, false] }
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

  private
  
  def at_least_one_time_field_filled
    unless preparation_time_hours > 0 || preparation_time_minutes > 0 || cooking_time_hours > 0 || cooking_time_minutes > 0
      errors.add(:base, 'At least one time field must be filled (hours or minutes)')
    end
  end
end
