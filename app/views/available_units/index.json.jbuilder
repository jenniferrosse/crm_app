json.array!(@available_units) do |available_unit|
  json.extract! available_unit, :id, :unit_id, :sq_ft, :market_rent, :bedroom, :bathroom, :laundry, :address, :city, :zip, :craigslist_title, :short_description, :features
  json.url available_unit_url(available_unit, format: :json)
end
