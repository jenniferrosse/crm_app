class ChangeNetRentInUnits < ActiveRecord::Migration
  def change
    change_column :units, :net_rent_min, 'integer USING CAST(net_rent_min AS integer)'
    change_column :units, :net_rent_max, 'integer USING CAST(net_rent_max AS integer)'
  end
end
