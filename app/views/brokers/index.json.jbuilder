json.array!(@brokers) do |broker|
  json.extract! broker, :id, :first_name, :last_name, :email, :mobile, :direct_phone, :company, :address, :city, :zip
  json.url broker_url(broker, format: :json)
end
