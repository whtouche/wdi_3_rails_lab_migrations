class AddReleasedAtToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :released_at, :date
  end
end
