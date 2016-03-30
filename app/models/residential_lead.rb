class ResidentialLead < ActiveRecord::Base
  has_many :prequalifications

  accepts_nested_attributes_for :prequalifications, reject_if: proc { |attributes| attributes['qualification_on_file'].blank? }

  has_many :residential_applications

  accepts_nested_attributes_for :residential_applications

  def self.search(search)
    where("first_name LIKE ?", "%#{search}%") 
    where("last_name LIKE ?", "%#{search}%")
  end

end
