class RemoveIsTowtruckFromVehiclesCreateTowTrucks < ActiveRecord::Migration
  def up # Executed when you run migrate (migrate up)
    create_table :tow_trucks do |t|
      t.text :make
      t.text :model
      t.integer :year
      t.date :acquisition_date
      t.text :notes
    end
    change_table :vehicles do |t|
      t.remove :is_towtruck
    end
  end

  def down # Executes when you rollback (migrate down)
    drop_table :tow_trucks
    change_table :vehicles do |t|
      t.boolean :is_towtruck, default: false
    end
  end
end
=begin
  def change
    remove_column :vehicles, :is_towtruck, default: false
  end
# Both the up and down in one method (without the create_table part)
=end
