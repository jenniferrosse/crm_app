class AddFieldsToCommercialLeads < ActiveRecord::Migration
  def change
    add_column :commercial_leads, :use, :string
    add_column :commercial_leads, :notes, :text
  end
end
