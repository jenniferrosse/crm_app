class AddStatusToResidentialLeads < ActiveRecord::Migration
  def change
    add_column :residential_leads, :status, :string
  end
end
