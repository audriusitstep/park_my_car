class ParkingCar < ApplicationRecord
  belongs_to :car
  belongs_to :parking

  def schedule_park_out
    ParkOutWorker.perform_at(park_for, id)
  end

  def as_json(options)
    super(:only => [:id], :methods => [:round_balance])
  end

  def round_balance
    current_balance.round(2)
  end

  def current_balance
    time_difference_in_seconds = Time.now - created_at
    price = (parking.fee_per_hour * time_difference_in_seconds) / 3600
    price
  end

end
