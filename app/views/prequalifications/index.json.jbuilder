json.array!(@prequalifications) do |prequalification|
  json.extract! prequalification, :id, :earliest_move_in, :latest_move_in, :price_min, :price_max, :people, :pets, :profession, :employer, :income, :combined_income, :preference, :preferences, :availability, :smoker, :prequalification_date, :residential_lead_id
  json.url prequalification_url(prequalification, format: :json)
end
