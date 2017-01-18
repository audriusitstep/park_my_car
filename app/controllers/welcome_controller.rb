class WelcomeController < ApplicationController
  def index
    @cars = Car.not_parked  
    @parkings = Parking.all
  end

  def park_car
    parking = Parking.find(params[:parking_id])
    car = Car.find(params[:car_id])
    park_in_seconds = params[:park_for]
    parking_car = ParkingCar.create(car_id: car.id, parking_id: parking.id,
                                    park_for: Time.now + park_in_seconds.to_i.seconds)
    parking_car.schedule_park_out
    redirect_to root_path
  end

end

