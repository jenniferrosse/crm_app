class AddCodeToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :property_code, :string
  end
end
