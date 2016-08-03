json.array!(@units) do |unit|
  json.extract! available_unit, :id, :unit_id, :sq_ft, :market_rent, :bedroom, :bathroom, :laundry, :address, :city, :zip, :craigslist_title, :short_description, :features
  json.url unit_url(unit, format: :json)
end
