class ResidentialLead < ActiveRecord::Base
  has_many :residential_applications

  accepts_nested_attributes_for :residential_applications

  has_many :prequalifications

  accepts_nested_attributes_for :prequalifications

  def self.search(search)
    where("first_name LIKE ?", "%#{search}%") 
    where("last_name LIKE ?", "%#{search}%")
  end

end
