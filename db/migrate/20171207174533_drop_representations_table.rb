class DropRepresentationsTable < ActiveRecord::Migration
  def change
    drop_table :representations
  end
end
