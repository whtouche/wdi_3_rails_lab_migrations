class DatePickedUpOnVehicles < ActiveRecord::Migration
  def change
    change_table :vehicles do |t|
      t.date :date_picked_up
    end
  end
end
# Reference the :vehicles change_table
  # Add a new column date_picked_up with datatype date
