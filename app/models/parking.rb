class Parking < ApplicationRecord
  validates :name, uniqueness: true

  has_and_belongs_to_many :cars, join_table: 'parking_cars'

  PARKING_TIMES = [
    ["30 seconds", 30],
    ["15 Minutes", 15 * 60],
    ["30 Minutes", 30 * 60],
    ["1 Hour", 60 * 60],
    ["2 Hours", 2 * 60 * 60],
    ["4 Hours", 4 * 60 * 60],
    ["1 Day", 24 * 60 * 60]
  ]

  DEFAULT_PARKING_TIME = 1800

end
