class AvailableUnit < ActiveRecord::Base

  def self.search(search)
    where("prospects ILIKE ?", "%#{search}%")
 
  end
end
