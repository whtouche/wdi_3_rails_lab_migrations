class AddCategoryToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :category, :text
  end
end
