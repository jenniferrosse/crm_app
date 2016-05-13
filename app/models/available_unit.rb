class AvailableUnit < ActiveRecord::Base

  def self.search(search)
    where("unit_id ILIKE ? OR market_rent ILIKE ?", "%#{search}%", "%#{search}%")
 
  end
end
