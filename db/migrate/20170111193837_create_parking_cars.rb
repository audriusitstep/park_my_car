class CreateParkingCars < ActiveRecord::Migration[5.0]
  def change
    create_table :parking_cars do |t|
      t.references :car, foreign_key: true
      t.references :parking, foreign_key: true

      t.timestamps
    end
  end
end
