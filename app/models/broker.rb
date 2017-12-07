class Broker < ActiveRecord::Base

  has_many :representations
  has_many :commercial_leads
  
  def self.search(search)
    where("first_name ILIKE ? OR last_name ILIKE ? OR company ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
 
  end

  def broker_full_name
    "#{first_name}, #{last_name}"
  end


  def self.to_csv (options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |broker|
        csv << broker.attributes.values_at(*column_names)
      end
    end  
  end
end
