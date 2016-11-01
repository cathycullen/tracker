json.array!(@registries) do |registry|
  json.extract! registry, :id, :name, :location, :state
  json.url registry_url(registry, format: :json)
end
