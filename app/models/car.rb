class Car < ApplicationRecord

  scope :not_parked, -> { joins('LEFT JOIN parking_cars ON cars.id = parking_cars.car_id WHERE parking_cars.car_id IS NULL') }

  has_and_belongs_to_many :parkings, join_table: 'parking_cars'

  def name
    "#{number} #{model}"
  end

  def park_for
    ParkingCar.where(car_id: id, parking_id: parkings.first.id).first.park_for
  end

end

