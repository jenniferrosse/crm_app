class CreateUnitReferences < ActiveRecord::Migration
  def change
    create_table :unit_references do |t|

      t.timestamps null: false
    end
  end
end
