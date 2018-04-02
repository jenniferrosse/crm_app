class Unit < ActiveRecord::Base
  has_many :unit_references
  has_many :commercial_leads, :through => :unit_references
  has_many :suggested_units
  has_many :commercial_leads, :through => :suggested_units
  belongs_to :property


  def self.search(search)
    where("prospects ILIKE ?", "%#{search}%")
 
  end
end
