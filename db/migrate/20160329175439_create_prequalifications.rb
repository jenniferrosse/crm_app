class CreatePrequalifications < ActiveRecord::Migration
  def change
    create_table :prequalifications do |t|
      t.date :earliest_move_in
      t.date :latest_move_in
      t.string :price_min
      t.string :price_max
      t.string :people
      t.text :pets
      t.string :profession
      t.string :employer
      t.string :income
      t.string :combined_income
      t.string :preference
      t.text :preferences
      t.text :availability
      t.boolean :smoker
      t.date :prequalification_date
      t.references :residential_lead, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
