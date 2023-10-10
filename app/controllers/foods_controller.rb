class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
