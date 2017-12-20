class AddLeaseTypeToUnits < ActiveRecord::Migration
  def change
    add_column :units, :lease_type, :string
  end
end
