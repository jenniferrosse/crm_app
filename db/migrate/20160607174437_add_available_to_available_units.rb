class AddAvailableToAvailableUnits < ActiveRecord::Migration
  def change
    add_column :available_units, :available, :boolean
  end
end
