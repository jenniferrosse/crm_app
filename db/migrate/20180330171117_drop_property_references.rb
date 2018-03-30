class DropPropertyReferences < ActiveRecord::Migration
  def change
    drop_table :property_references
  end
end
