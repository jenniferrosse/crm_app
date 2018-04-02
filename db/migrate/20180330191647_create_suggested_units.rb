class CreateSuggestedUnits < ActiveRecord::Migration
  def change
    create_table :suggested_units do |t|

      t.timestamps null: false
    end
  end
end
