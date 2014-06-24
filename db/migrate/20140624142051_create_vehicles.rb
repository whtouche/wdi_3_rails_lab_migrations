class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.text :make
      t.text :model
      t.text :color
      t.integer :year
      t.text :vin, null: false
      t.date :acquisition_date
      t.text :notes
      t.boolean :is_towtruck, default: false

      t.index :vin, unique: true
    end
  end
end
# lines 4, 5, and 6 could be done on one lines
  # t.text :make, :model, :color
    # Then any defaults or restrictions apply to everything on that line
