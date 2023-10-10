class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @recipe = Recipe.find(params[:id])
    @preparation_time_hours = @recipe.preparation_time_hours
    @preparation_time_minutes = @recipe.preparation_time_minutes
    @cooking_time_hours = @recipe.cooking_time_hours
    @cooking_time_minutes = @recipe.cooking_time_minutes
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    @recipe.preparation_time = calculate_minutes(params[:recipe][:preparation_time_hr], params[:recipe][:preparation_time_min])
    @recipe.cooking_time = calculate_minutes(params[:recipe][:cooking_time_hr], params[:recipe][:cooking_time_min])

    if @recipe.save
      # Handle successful save
      redirect_to @recipe
    else
      # Handle validation errors
      render 'new'
    end
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :public, :preparation_time_hr, :preparation_time_min, :cooking_time_hr, :cooking_time_min)
  end

  def calculate_minutes(hours, minutes)
    hours.to_i * 60 + minutes.to_i
  end
end
