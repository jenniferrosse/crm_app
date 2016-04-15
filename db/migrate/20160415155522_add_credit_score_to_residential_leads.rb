class AddCreditScoreToResidentialLeads < ActiveRecord::Migration
  def change
    add_column :residential_leads, :credit_score, :string
  end
end
