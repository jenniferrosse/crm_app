class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :commercial_leads, :status, :old_status
  end
end
