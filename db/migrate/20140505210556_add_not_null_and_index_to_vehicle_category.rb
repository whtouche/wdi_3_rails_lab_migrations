class AddNotNullAndIndexToVehicleCategory < ActiveRecord::Migration
  def change
    change_column_null :vehicles, :category, false
    add_index :vehicles, :category
  end
end
