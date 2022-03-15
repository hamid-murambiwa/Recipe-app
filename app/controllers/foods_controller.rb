class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def create

  end

  def destroy; end

  private

  def mass_params
    params.require(:food).permit(:name, :price, :unit)
  end
end
