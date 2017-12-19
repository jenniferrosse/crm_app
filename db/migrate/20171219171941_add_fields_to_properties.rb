class AddFieldsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :short_description, :string
    add_column :properties, :medium_description, :string
  end
end
