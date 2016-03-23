json.array!(@residential_leads) do |residential_lead|
  json.extract! residential_lead, :id, :first_name, :last_name, :email, :phone, :contact_type, :earliest_move_in, :latest_move_in, :price_min, :price_max, :properties_referenced, :profession, :people, :pets, :income, :source, :combined_income
  json.url residential_lead_url(residential_lead, format: :json)
end
