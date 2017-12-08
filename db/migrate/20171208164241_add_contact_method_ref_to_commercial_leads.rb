class AddContactMethodRefToCommercialLeads < ActiveRecord::Migration
  def change
    add_reference :commercial_leads, :contact_method, index: true, foreign_key: true
  end
end
