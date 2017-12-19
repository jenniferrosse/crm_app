class AddNotesToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :notes, :text
  end
end
