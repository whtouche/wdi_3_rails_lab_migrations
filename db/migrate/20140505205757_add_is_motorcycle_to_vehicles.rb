class AddIsMotorcycleToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :is_motorcycle, :boolean
  end
end
