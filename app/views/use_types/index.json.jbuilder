json.array!(@use_types) do |use_type|
  json.extract! use_type, :id, :name
  json.url use_type_url(use_type, format: :json)
end
