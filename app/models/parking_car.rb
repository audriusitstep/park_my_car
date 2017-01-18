class ParkingCar < ApplicationRecord
  belongs_to :car
  belongs_to :parking

  def schedule_park_out
    ParkOutWorker.perform_at(park_for, id)
  end

end
