class CreateRepresentations < ActiveRecord::Migration
  def change
    create_table :representations do |t|
      t.integer :broker_id
      t.integer :commercial_lead_id

      t.timestamps null: false
    end
  end
end
