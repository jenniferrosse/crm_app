class SuggestedUnit < ActiveRecord::Base
  belongs_to :unit
  belongs_to :commercial_lead
end
