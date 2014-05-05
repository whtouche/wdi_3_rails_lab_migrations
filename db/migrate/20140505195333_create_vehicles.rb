class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.text :make, :model, :color
      t.integer :year
      t.text :vin, null: false
      t.index :vin, unique: true
      t.date :acquired_at
      t.text :notes
      t.boolean :is_tow_truck
    end
  end
end
