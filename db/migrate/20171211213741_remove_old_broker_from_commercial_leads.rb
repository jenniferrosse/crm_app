class RemoveOldBrokerFromCommercialLeads < ActiveRecord::Migration
  def change
    remove_column :commercial_leads, :old_broker
  end
end
