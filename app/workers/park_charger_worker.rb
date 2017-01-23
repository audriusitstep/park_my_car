class ParkChargerWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  #recurrence { hourly.minute_of_hour(0, 15, 30, 45) }

  #recurrence { secondly(15) }

  recurrence { minutely.second_of_minute(0, 10, 20, 30, 40, 50, 55) }

  def perform
    ParkingCar.find_each do |parking_car|
      time_difference_in_seconds = Time.now - parking_car.created_at
      price = (parking_car.parking.fee_per_hour * time_difference_in_seconds) / 3600
      parking_car.update(balance: price)
    end
  end
end
