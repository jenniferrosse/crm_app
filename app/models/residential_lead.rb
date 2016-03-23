class ResidentialLead < ActiveRecord::Base

  def self.search(search)
    where("first_name LIKE ?", "%#{search}%") 
    where("last_name LIKE ?", "%#{search}%")
  end

end
