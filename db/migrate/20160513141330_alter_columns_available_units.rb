class AlterColumnsAvailableUnits < ActiveRecord::Migration
  def change
    change_column :available_units, :market_rent, 
      "integer USING NULLIF(market_rent, '')::int"
    change_column :available_units, :sq_ft, 
      "integer USING NULLIF(sq_ft, '')::int"
  end
end
