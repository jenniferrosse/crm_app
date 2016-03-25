class AddDetailsToResidentialLeads < ActiveRecord::Migration
  def change
    add_column :residential_leads, :preferences, :text
    add_column :residential_leads, :availability, :text
    add_column :residential_leads, :smoker, :boolean
    add_column :residential_leads, :appointment_date, :date
    add_column :residential_leads, :appointment_time, :time
    add_column :residential_leads, :spaces, :text
    add_column :residential_leads, :application_date, :date
  end
end
