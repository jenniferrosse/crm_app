class RemoveContactDateFromCommercialLeads < ActiveRecord::Migration
  def change
    remove_column :commercial_leads, :contact_date
  end
end
