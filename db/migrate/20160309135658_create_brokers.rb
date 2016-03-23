class CreateBrokers < ActiveRecord::Migration
  def change
    create_table :brokers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.string :direct_phone
      t.string :company
      t.string :address
      t.string :city
      t.string :zip

      t.timestamps null: false
    end
  end
end
