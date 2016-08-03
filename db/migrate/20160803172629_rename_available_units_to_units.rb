class RenameAvailableUnitsToUnits < ActiveRecord::Migration
  def change
    rename_table :available_units, :units
  end
end
