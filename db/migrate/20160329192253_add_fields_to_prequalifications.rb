class AddFieldsToPrequalifications < ActiveRecord::Migration
  def change
    add_column :prequalifications, :prequalification_on_file, :boolean
  end
end
