class AddFeesToParking < ActiveRecord::Migration[5.0]
  def change
    add_column :parkings, :fee_per_hour, :decimal, default: 2
    add_column :parkings, :fee_over_charge_per_hour, :decimal, default: 4
    add_column :parkings, :balance, :decimal, default: 0
  end
end


