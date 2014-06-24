class AddIsMotorcycleOnVehicles < ActiveRecord::Migration

  def change
    change_table :vehicles do |t|
      t.boolean :is_motorcycle, default: false
    end
  end
end
