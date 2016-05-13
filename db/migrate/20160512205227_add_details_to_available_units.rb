class AddDetailsToAvailableUnits < ActiveRecord::Migration
  def change
    add_column :available_units, :lease_end_date, :date
    add_column :available_units, :prospects, :text
  end
end
