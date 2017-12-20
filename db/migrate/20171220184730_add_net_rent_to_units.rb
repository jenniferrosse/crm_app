class AddNetRentToUnits < ActiveRecord::Migration
  def change
    add_column :units, :net_rent_min, :integer
    add_column :units, :net_rent_max, :integer
  end
end
