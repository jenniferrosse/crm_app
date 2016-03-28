class CommercialLead < ActiveRecord::Base

  def self.search(search)
    where("first_name LIKE ?", "%#{search}%") 
    where("last_name LIKE ?", "%#{search}%")
    where("use LIKE ?", "%#{search}%")
    where("properties_referenced LIKE ?", "%#{search}%")
  end

end
