class AddBrokerToCommercialLeads < ActiveRecord::Migration
  def change
    add_column :commercial_leads, :broker, :string
  end
end
