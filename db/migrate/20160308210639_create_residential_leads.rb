class CreateResidentialLeads < ActiveRecord::Migration
  def change
    create_table :residential_leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :contact_type
      t.date :earliest_move_in
      t.date :latest_move_in
      t.string :price_min
      t.string :price_max
      t.text :properties_referenced
      t.string :profession
      t.string :people
      t.text :pets
      t.string :income
      t.string :source
      t.string :combined_income

      t.timestamps null: false
    end
  end
end
