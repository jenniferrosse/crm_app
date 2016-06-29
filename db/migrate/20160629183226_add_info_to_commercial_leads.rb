class AddInfoToCommercialLeads < ActiveRecord::Migration
  def change
    add_column :commercial_leads, :company_name, :string
    add_column :commercial_leads, :website, :string
    add_column :commercial_leads, :size, :string
    add_column :commercial_leads, :occupancy_date, :date
    add_column :commercial_leads, :budget_max, :integer
    add_column :commercial_leads, :next_follow_up, :date
  end
end
