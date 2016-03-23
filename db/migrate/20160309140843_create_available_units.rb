class CreateAvailableUnits < ActiveRecord::Migration
  def change
    create_table :available_units do |t|
      t.string :unit_id
      t.string :sq_ft
      t.string :market_rent
      t.string :bedroom
      t.string :bathroom
      t.string :laundry
      t.string :address
      t.string :city
      t.string :zip
      t.string :craigslist_title
      t.text :short_description
      t.text :features

      t.timestamps null: false
    end
  end
end
