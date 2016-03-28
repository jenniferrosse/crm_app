json.array!(@residential_applications) do |residential_application|
  json.extract! residential_application, :id, :date_received, :date_completed, :fee_paid
  json.url residential_application_url(residential_application, format: :json)
end
