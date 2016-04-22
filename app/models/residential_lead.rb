class ResidentialLead < ActiveRecord::Base

def self.search(search)
  where("first_name ILIKE ? OR last_name ILIKE ?", "%#{search}%", "%#{search}%")
 
end

  has_many :prequalifications

  accepts_nested_attributes_for :prequalifications

  has_many :residential_applications

  accepts_nested_attributes_for :residential_applications

end
