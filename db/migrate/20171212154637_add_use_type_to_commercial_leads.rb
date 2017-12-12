class AddUseTypeToCommercialLeads < ActiveRecord::Migration
  def change
    add_reference :commercial_leads, :use_type, index: true, foreign_key: true
  end
end
