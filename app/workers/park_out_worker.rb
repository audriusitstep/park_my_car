class ParkOutWorker
  include Sidekiq::Worker

  def perform(parking_car_id)
    ParkingCar.find(parking_car_id).destroy
  end
end
