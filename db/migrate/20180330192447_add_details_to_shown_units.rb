class AddDetailsToShownUnits < ActiveRecord::Migration
  def change
    add_reference :shown_units, :commercial_lead, foreign_key: true
    add_reference :shown_units, :unit, foreign_key: true
  end
end
