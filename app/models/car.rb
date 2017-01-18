class Car < ApplicationRecord

  scope :not_parked, -> { joins('LEFT JOIN parking_cars ON cars.id = parking_cars.car_id WHERE parking_cars.car_id IS NULL') }

  has_and_belongs_to_many :parkings, join_table: 'parking_cars'

  def name
    "#{number} #{model}"
  end

  def park_for
    parking_car.park_for
  end

  def parket_at
    parking_car.created_at
  end

  def balance
    parking_car.balance
  end

  def parking_car
    ParkingCar.where(car_id: id, parking_id: parkings.first.id).first
  end

end

