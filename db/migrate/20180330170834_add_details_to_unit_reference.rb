class AddDetailsToUnitReference < ActiveRecord::Migration
  def change
    add_reference :unit_references, :unit, foreign_key: true
    add_reference :unit_references, :commercial_lead, foreign_key: true
  end
end
