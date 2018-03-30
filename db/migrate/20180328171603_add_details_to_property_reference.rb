class AddDetailsToPropertyReference < ActiveRecord::Migration
  def change
    add_reference :property_references, :property, foreign_key: true
    add_reference :property_references, :commercial_lead, foreign_key: true
  end
end
