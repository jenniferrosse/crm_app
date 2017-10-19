class AddSourceRefToCommercialLeads < ActiveRecord::Migration
  def change
    add_reference :commercial_leads, :source, index: true, foreign_key: true
  end
end
