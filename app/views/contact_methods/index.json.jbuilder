json.array!(@contact_methods) do |contact_method|
  json.extract! contact_method, :id, :name
  json.url contact_method_url(contact_method, format: :json)
end
