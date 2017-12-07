class Representation < ActiveRecord::Base
  belongs_to :brokers
  belongs_to :commercial_leads
end
