class CreateResidentialApplications < ActiveRecord::Migration
  def change
    create_table :residential_applications do |t|
      t.date :date_received
      t.date :date_completed
      t.boolean :fee_paid

      t.timestamps null: false
    end
  end
end
