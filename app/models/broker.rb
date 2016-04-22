class Broker < ActiveRecord::Base
  
  def self.search(search)
    where("first_name ILIKE ? OR last_name ILIKE ? OR company ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
 
  end
end
