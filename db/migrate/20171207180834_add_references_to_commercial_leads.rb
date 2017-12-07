class AddReferencesToCommercialLeads < ActiveRecord::Migration
  def change
    add_reference :commercial_leads, :broker, index: true, foreign_key: true
  end
end
