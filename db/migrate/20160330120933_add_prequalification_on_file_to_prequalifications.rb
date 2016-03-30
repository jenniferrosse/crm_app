class AddPrequalificationOnFileToPrequalifications < ActiveRecord::Migration
  def change
    add_column :prequalifications, :qualification_on_file, :string
  end
end
