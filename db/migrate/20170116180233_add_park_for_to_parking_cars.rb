class AddParkForToParkingCars < ActiveRecord::Migration[5.0]
  def change
    add_column :parking_cars, :park_for, :datetime
  end
end
