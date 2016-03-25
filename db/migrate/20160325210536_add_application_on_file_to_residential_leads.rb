class AddApplicationOnFileToResidentialLeads < ActiveRecord::Migration
  def change
    add_column :residential_leads, :application_on_file, :boolean, default: false
  end
end
