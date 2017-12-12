class CommercialLead < ActiveRecord::Base

  belongs_to :source
  belongs_to :status
  belongs_to :contact_method
  belongs_to :broker
  belongs_to :use_type
  
  def self.search(search)
    where("first_name ILIKE ? OR last_name ILIKE ? OR use ILIKE ? OR description ILIKE ? OR email ILIKE ? OR company_name ILIKE ? OR properties_referenced ILIKE ? OR properties_suggested ILIKE ? OR properties_shown ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
 
  end

  def self.to_csv (options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |commercial_lead|
        csv << commercial_lead.attributes.values_at(*column_names)
      end
    end  
  end

end
