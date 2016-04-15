class AddArtistInfoToResidentialLeads < ActiveRecord::Migration
  def change
    add_column :residential_leads, :is_artist, :boolean
    add_column :residential_leads, :art_description, :text
  end
end
