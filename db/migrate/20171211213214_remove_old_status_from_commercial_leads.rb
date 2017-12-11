class RemoveOldStatusFromCommercialLeads < ActiveRecord::Migration
  def change
    remove_column :commercial_leads, :old_status
  end
end
