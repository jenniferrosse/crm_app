json.array!(@commercial_leads) do |commercial_lead|
  json.extract! commercial_lead, :id, :first_name, :last_name, :email, :phone, :contact_type, :description, :source, :contact_date, :properties_referenced
  json.url commercial_lead_url(commercial_lead, format: :json)
end
