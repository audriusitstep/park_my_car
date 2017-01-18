class AddBalanceToParkingCar < ActiveRecord::Migration[5.0]
  def change
    add_column :parking_cars, :balance, :decimal, default: 0
  end
end
