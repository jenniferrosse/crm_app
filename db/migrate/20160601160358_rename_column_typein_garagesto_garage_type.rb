class RenameColumnTypeinGaragestoGarageType < ActiveRecord::Migration
  def change
    rename_column :garages, :type, :parking_type
  end
end
