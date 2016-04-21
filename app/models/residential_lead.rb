class ResidentialLead < ActiveRecord::Base
  searchkick

  has_many :prequalifications

  accepts_nested_attributes_for :prequalifications

  has_many :residential_applications

  accepts_nested_attributes_for :residential_applications

end
