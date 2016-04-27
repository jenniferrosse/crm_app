class CommercialLead < ActiveRecord::Base

  def self.search(search)
    where("first_name ILIKE ? OR last_name ILIKE ? OR broker ILIKE ? OR use ILIKE ? OR description ILIKE ? OR email ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
 
  end

end
