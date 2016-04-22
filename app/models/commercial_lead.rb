class CommercialLead < ActiveRecord::Base

  def self.search(search)
    where("first_name ILIKE ? OR last_name ILIKE ?", "%#{search}%", "%#{search}%")
 
  end

end
