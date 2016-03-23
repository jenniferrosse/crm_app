class AddFieldsToResidentialLeads < ActiveRecord::Migration
  def change
    add_column :residential_leads, :contact_date, :date
    add_column :residential_leads, :employer, :string
    add_column :residential_leads, :notes, :text
  end
end
