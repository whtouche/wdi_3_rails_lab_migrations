class CreateTowTrucks < ActiveRecord::Migration
  def change
    create_table :tow_trucks do |t|
      t.text :make, :model
      t.integer :year
      t.date :acquired_at
      t.text :notes
    end

    remove_column :vehicles, :is_tow_truck, :boolean
  end
end
