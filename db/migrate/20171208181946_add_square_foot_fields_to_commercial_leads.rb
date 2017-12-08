class AddSquareFootFieldsToCommercialLeads < ActiveRecord::Migration
  def change
    add_column :commercial_leads, :size_min, :integer
    add_column :commercial_leads, :size_max, :integer
  end
end
