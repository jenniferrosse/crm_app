class AddResidentialLeadToResidentialApplications < ActiveRecord::Migration
  def change
    add_reference :residential_applications, :residential_lead, index: true, foreign_key: true
  end
end
