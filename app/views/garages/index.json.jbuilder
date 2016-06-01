json.array!(@garages) do |garage|
  json.extract! garage, :id, :unit_id, :address, :type, :rent
  json.url garage_url(garage, format: :json)
end
