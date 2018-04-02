class AddDetailsToSuggestedUnits < ActiveRecord::Migration
  def change
    add_reference :suggested_units, :commercial_lead, foreign_key: true
    add_reference :suggested_units, :unit, foreign_key: true
  end
end
