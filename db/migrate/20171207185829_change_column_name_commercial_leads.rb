class ChangeColumnNameCommercialLeads < ActiveRecord::Migration
  def change
    rename_column :commercial_leads, :broker, :old_broker
  end
end
