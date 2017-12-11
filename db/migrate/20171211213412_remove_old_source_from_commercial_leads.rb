class RemoveOldSourceFromCommercialLeads < ActiveRecord::Migration
  def change
    remove_column :commercial_leads, :old_source
  end
end
