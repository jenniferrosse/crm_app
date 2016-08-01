class AddFollowUpToCommercialLeads < ActiveRecord::Migration
  def change
    add_column :commercial_leads, :follow_up, :boolean
  end
end
