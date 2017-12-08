class ChangeColumnNameSource < ActiveRecord::Migration
  def change
    rename_column :commercial_leads, :source, :old_source
  end
end
