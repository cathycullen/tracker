json.array!(@registry_coordinators) do |registry_coordinator|
  json.extract! registry_coordinator, :id
  json.url registry_coordinator_url(registry_coordinator, format: :json)
end
