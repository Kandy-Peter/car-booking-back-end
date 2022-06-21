class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id
    if @car.save
      render json: @car
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find_by(id: params[:id])

    if @car.destroy
      render json: { message: 'Car deleted successfully' }
    else
      render json: { message: 'An error occured, please try again' }, status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :model, :car_image, :reserved, :per_day_amount)
  end
end
