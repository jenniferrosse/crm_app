class Unit < ActiveRecord::Base
  belongs_to :property

  def self.search(search)
    where("prospects ILIKE ?", "%#{search}%")
 
  end
end
