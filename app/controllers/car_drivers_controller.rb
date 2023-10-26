class CarDriversController < ApplicationController
  def create
    @car_driver = CarDriver.new(car_driver_params)
    if @car_driver.save
      render json: CarDriverSerializer.new(@car_driver)
    else
      render json: {detail: "CarDriver not created"}
    end
  end

  def delete 
    @car_driver = CarDriver.find(params[:id])
    @car_driver.destroy
    
  end

  def show
    @car_driver = CarDriver.find(params[:id])
    render json: CarDriverSerializer.new(@car_driver)
  end

  private 

  def car_driver_params
    params.require(:car_driver).permit(:driver_name, :number, :start_pos, :car_type, :previous_winner)
  end
end