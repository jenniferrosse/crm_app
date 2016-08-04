class AddPropertyReferencesToUnits < ActiveRecord::Migration
  def change
    add_reference :units, :property, index: true, foreign_key: true
  end
end
