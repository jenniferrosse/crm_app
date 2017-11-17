class AddContactInfoToCommercialLeads < ActiveRecord::Migration
  def change
    add_column :commercial_leads, :initial_contact, :datetime
    add_column :commercial_leads, :initial_response, :datetime
  end
end
