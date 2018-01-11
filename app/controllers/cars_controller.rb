class CarsController < ApplicationController
  def index
  end

  private
  def car_params
    params.require(:car).permit(:mark, :model, :image)
  end
end
