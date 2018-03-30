class Unit < ActiveRecord::Base
  has_many :unit_references
  has_many :commercial_leads, :through => :unit_references
  belongs_to :property


  def self.search(search)
    where("prospects ILIKE ?", "%#{search}%")
 
  end
end
