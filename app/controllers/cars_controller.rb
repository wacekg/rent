class CarsController < ApplicationController
  before_action :set_car, except: [:index, :new, :create]
  def index
    @cars = Car.all.order(mark: :desc)
    @cars = @cars.where("mark like ?", params[:q]) if params[:q].present?
  end
  def new
    authorize Car
    @car = Car.new
  end
  def create
    authorize @car
    @car = Car.create(car_params)
    render 'cars/show'
  end
  def edit
  end
  def update
    authorize @car
    @car.update_attributes(car_params)
    render 'cars/edit'
  end
  def show
  end
  def destroy
    authorize @car
    @car.destroy
    redirect_to action: "index"
  end

  private
  def set_car
    @car = Car.find(params[:id])
  end
  def car_params
    params.require(:car).permit(:mark, :model, :image, :year_prod, :prince, :description, :mileage, :fuel, :limit, :supplement, :access)
  end
end
