class AddStatusRefToCommercialLeads < ActiveRecord::Migration
  def change
    add_reference :commercial_leads, :status, index: true, foreign_key: true
  end
end
