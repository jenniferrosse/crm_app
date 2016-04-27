class AddShowingInfoToCommercialLeads < ActiveRecord::Migration
  def change
    add_column :commercial_leads, :properties_suggested, :text
    add_column :commercial_leads, :properties_shown, :text
    add_column :commercial_leads, :appointment_date, :date
  end
end
