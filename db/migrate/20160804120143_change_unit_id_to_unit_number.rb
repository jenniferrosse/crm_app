class ChangeUnitIdToUnitNumber < ActiveRecord::Migration
  def change
    rename_column :units, :unit_id, :unit_number
  end
end
