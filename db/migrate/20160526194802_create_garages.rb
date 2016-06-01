class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.string :unit_id
      t.string :address
      t.string :type
      t.integer :rent

      t.timestamps null: false
    end
  end
end
