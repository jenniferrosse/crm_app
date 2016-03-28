class ResidentialLead < ActiveRecord::Base
  has_many :residential_application

  def self.search(search)
    where("first_name LIKE ?", "%#{search}%") 
    where("last_name LIKE ?", "%#{search}%")
  end

end
