class AddFeeAndPaidToVehicles < ActiveRecord::Migration
  def change
    change_table :vehicles do |t|
      t.decimal :fee, precision: 8, scale: 2
      t.boolean :is_paid
    end
  end
end
