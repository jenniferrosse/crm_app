class RemoveSizeFromCommercialLeads < ActiveRecord::Migration
  def change
    remove_column :commercial_leads, :size
  end
end
