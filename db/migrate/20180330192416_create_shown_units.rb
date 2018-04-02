class CreateShownUnits < ActiveRecord::Migration
  def change
    create_table :shown_units do |t|

      t.timestamps null: false
    end
  end
end
