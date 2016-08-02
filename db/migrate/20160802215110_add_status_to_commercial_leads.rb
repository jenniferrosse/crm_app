class AddStatusToCommercialLeads < ActiveRecord::Migration
  def change
    add_column :commercial_leads, :status, :string
  end
end
