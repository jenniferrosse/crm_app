class CreateCommercialLeads < ActiveRecord::Migration
  def change
    create_table :commercial_leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :contact_type
      t.text :description
      t.string :source
      t.date :contact_date
      t.string :properties_referenced

      t.timestamps null: false
    end
  end
end
