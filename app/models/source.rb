class Source < ActiveRecord::Base
  has_many :commercial_leads

  def self.to_csv (options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |source|
        csv << source.attributes.values_at(*column_names)
      end
    end  
  end
end
